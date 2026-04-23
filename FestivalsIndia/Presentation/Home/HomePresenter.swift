import SwiftUI
import Combine

// S: Only responsibility is driving HomeView's state.
// D: Depends on protocols, not concrete types — both can be mocked in tests.
final class HomePresenter: ObservableObject, HomePresenting {

    @Published private(set) var viewState: HomeViewState = .empty

    private let repository: FestivalRepositoryProtocol
    private let notificationService: NotificationServiceProtocol
    private let yearRange: ClosedRange<Int>

    init(
        repository: FestivalRepositoryProtocol,
        notificationService: NotificationServiceProtocol,
        yearRange: ClosedRange<Int>? = nil
    ) {
        self.repository = repository
        self.notificationService = notificationService
        let year = Calendar.current.component(.year, from: .now)
        self.yearRange = yearRange ?? year...(year + 5)
    }

    // MARK: - HomePresenting

    func onAppear() {
        notificationService.refreshStatus()
        reload()
    }

    func selectRegion(_ region: Region) {
        viewState.selectedRegion = region
        reloadFestivals()
    }

    func updateSearch(_ text: String) {
        viewState.searchText = text
        reloadFestivals()
    }

    // MARK: - Private

    private func reload() {
        viewState.regionTabs = makeRegionTabs()
        viewState.notificationsEnabled = notificationService.authorizationStatus == .authorized
        viewState.nextFestival = makeNextFestival()
        reloadFestivals()
    }

    private func reloadFestivals() {
        let raw = repository.search(query: viewState.searchText, in: viewState.selectedRegion)
        viewState.festivals = raw.map { makeRowModel(from: $0) }
    }

    private func makeRegionTabs() -> [RegionTabItem] {
        Region.allCases.map {
            RegionTabItem(id: $0.id, title: $0.rawValue, emoji: $0.emoji, gradient: $0.gradient, region: $0)
        }
    }

    private func makeNextFestival() -> NextFestivalDisplayModel? {
        guard let (festival, date) = repository.upcomingFestivals(from: .now, yearRange: yearRange).first else {
            return nil
        }
        let days = Calendar.current.dateComponents([.day], from: .now, to: date).day ?? 0
        let countdown: String
        switch days {
        case 0:  countdown = "Today!"
        case 1:  countdown = "Tomorrow!"
        default: countdown = "In \(days) days"
        }
        return NextFestivalDisplayModel(
            festivalID: festival.id,
            name: festival.name,
            emoji: festival.emoji,
            tagline: festival.tagline,
            gradientColors: festival.region.gradient,
            countdownText: countdown
        )
    }

    private func makeRowModel(from festival: Festival) -> FestivalRowDisplayModel {
        let days = daysUntil(festival)
        return FestivalRowDisplayModel(
            id: festival.id,
            name: festival.name,
            emoji: festival.emoji,
            tagline: festival.tagline,
            regionLabel: festival.region.rawValue,
            gradientColors: festival.region.gradient,
            accentColor: Color(hex: festival.colorHex),
            daysAwayText: daysText(days),
            daysAwayColor: daysColor(days)
        )
    }

    private func daysUntil(_ festival: Festival) -> Int? {
        let currentYear = Calendar.current.component(.year, from: .now)
        for year in [currentYear, currentYear + 1] {
            if let d = festival.date(for: year), d >= .now {
                return Calendar.current.dateComponents([.day], from: .now, to: d).day
            }
        }
        return nil
    }

    private func daysText(_ days: Int?) -> String? {
        guard let days else { return nil }
        switch days {
        case 0:  return "Today!"
        case 1:  return "Tomorrow"
        default: return "in \(days)d"
        }
    }

    private func daysColor(_ days: Int?) -> Color? {
        guard let days else { return nil }
        switch days {
        case 0:  return .red
        case 1:  return .orange
        default: return .secondary
        }
    }

    // MARK: - Notification toggle

    func enableNotifications() async {
        let granted = await notificationService.requestPermission()
        await MainActor.run { viewState.notificationsEnabled = granted }
        if granted {
            await notificationService.scheduleReminders(for: repository.fetchAll(), years: yearRange)
        }
    }

    func disableNotifications() async {
        await notificationService.cancelAllReminders()
        await MainActor.run { viewState.notificationsEnabled = false }
    }

}
