import SwiftUI
import Combine

// S: Only drives FestivalDetailView. Knows nothing about list filtering or notifications.
final class FestivalDetailPresenter: ObservableObject, FestivalDetailPresenting {

    @Published private(set) var viewState: DetailViewState = .loading

    private let festivalID: UUID
    private let repository: FestivalRepositoryProtocol

    init(festivalID: UUID, repository: FestivalRepositoryProtocol) {
        self.festivalID = festivalID
        self.repository = repository
    }

    // MARK: - FestivalDetailPresenting

    func onAppear() {
        guard let festival = repository.fetch(id: festivalID) else { return }
        viewState = DetailViewState(content: makeDisplayModel(from: festival), isLoading: false)
    }

    // MARK: - Private

    private func makeDisplayModel(from festival: Festival) -> FestivalDetailDisplayModel {
        let accentColor = Color(hex: festival.colorHex)
        let (dateText, countdownText, countdownColor) = dateInfo(for: festival)
        return FestivalDetailDisplayModel(
            id: festival.id,
            name: festival.name,
            emoji: festival.emoji,
            regionLabel: festival.region.rawValue,
            regionEmoji: festival.region.emoji,
            gradientColors: festival.region.gradient,
            accentColor: accentColor,
            dateText: dateText,
            countdownText: countdownText,
            countdownColor: countdownColor,
            importance: festival.importance.trimmingCharacters(in: .whitespacesAndNewlines),
            rituals: festival.rituals,
            funFacts: festival.funFacts
        )
    }

    private func dateInfo(for festival: Festival) -> (dateText: String, countdown: String?, countdownColor: Color?) {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let currentYear = Calendar.current.component(.year, from: .now)

        for year in [currentYear, currentYear + 1] {
            if let date = festival.date(for: year), date >= .now {
                let days = Calendar.current.dateComponents([.day], from: .now, to: date).day ?? 0
                let (text, color) = countdownLabel(days: days)
                return (formatter.string(from: date), text, color)
            }
        }
        if let date = festival.date(for: currentYear) {
            return (formatter.string(from: date), nil, nil)
        }
        return ("Date varies", nil, nil)
    }

    private func countdownLabel(days: Int) -> (String, Color) {
        switch days {
        case 0:  return ("Today!", .red)
        case 1:  return ("Tomorrow!", .orange)
        default: return ("\(days) days away", .blue)
        }
    }
}
