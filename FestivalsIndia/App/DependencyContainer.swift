import SwiftUI

// Single place where the real dependency graph is assembled.
// Swap any concrete type for a mock/stub without touching a single View or Presenter.
@MainActor
final class DependencyContainer {

    // MARK: - Shared services (singletons)

    private let repository: FestivalRepositoryProtocol = FestivalRepository()
    private let notificationService: NotificationServiceProtocol = NotificationService.shared

    private var yearRange: ClosedRange<Int> {
        let y = Calendar.current.component(.year, from: .now)
        return y...(y + 5)
    }

    // MARK: - Presenter factories

    func makeHomePresenter() -> HomePresenter {
        HomePresenter(
            repository: repository,
            notificationService: notificationService,
            yearRange: yearRange
        )
    }

    func makeDetailPresenter(for festivalID: UUID) -> FestivalDetailPresenter {
        FestivalDetailPresenter(festivalID: festivalID, repository: repository)
    }

    func makeSettingsPresenter() -> SettingsPresenter {
        SettingsPresenter(
            repository: repository,
            notificationService: notificationService,
            yearRange: yearRange
        )
    }

    // MARK: - View factories
    // Views receive AnyView so HomeView doesn't need to know the concrete detail presenter type.

    func makeDetailView(for festivalID: UUID) -> AnyView {
        let presenter = makeDetailPresenter(for: festivalID)
        return AnyView(FestivalDetailView(presenter: presenter))
    }

    func makeSettingsView() -> AnyView {
        let presenter = makeSettingsPresenter()
        return AnyView(SettingsView(presenter: presenter))
    }
}
