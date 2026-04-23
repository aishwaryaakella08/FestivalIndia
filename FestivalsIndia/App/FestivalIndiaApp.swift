import SwiftUI

@main
struct FestivalIndiaApp: App {

    // Container owns the dependency graph for the app's lifetime.
    private let container = DependencyContainer()

    @StateObject private var homePresenter: HomePresenter

    init() {
        let container = DependencyContainer()
        _homePresenter = StateObject(wrappedValue: container.makeHomePresenter())
    }

    var body: some Scene {
        WindowGroup {
            HomeView(presenter: homePresenter) { festivalID in
                container.makeDetailView(for: festivalID)
            }
        }
    }
}
