import SwiftUI

// View is generic over any HomePresenting — it never imports HomePresenter directly.
// This is the D in SOLID at the View layer.
struct HomeView<P: HomePresenting & ObservableObject>: View {
    @ObservedObject var presenter: P

    // Factory closure: HomeView doesn't know how to build a detail presenter.
    // The DependencyContainer provides this at wiring time.
    let makeDetailView: (UUID) -> AnyView

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    if let next = presenter.viewState.nextFestival {
                        NextFestivalBanner(model: next) {
                            // Navigate to detail via the factory
                            navigateTo(festivalID: next.festivalID)
                        }
                    }
                    regionPicker
                    festivalList
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 32)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Indian Festivals 🇮🇳")
            .searchable(text: searchBinding, prompt: "Search festivals…")
            .onAppear { presenter.onAppear() }
        }
    }

    // MARK: - Region picker

    private var regionPicker: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(presenter.viewState.regionTabs) { tab in
                    RegionChipView(
                        item: tab,
                        isSelected: presenter.viewState.selectedRegion == tab.region
                    ) {
                        presenter.selectRegion(tab.region)
                    }
                }
            }
            .padding(.horizontal, 2)
            .padding(.vertical, 4)
        }
    }

    // MARK: - Festival list

    private var festivalList: some View {
        LazyVStack(spacing: 12) {
            if presenter.viewState.festivals.isEmpty {
                EmptyStateView(
                    systemImage: "magnifyingglass",
                    title: "No festivals found",
                    subtitle: "Try a different search term or region."
                )
            } else {
                ForEach(presenter.viewState.festivals) { model in
                    NavigationLink(destination: makeDetailView(model.id)) {
                        FestivalCardView(model: model)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }

    // MARK: - Helpers

    private var searchBinding: Binding<String> {
        Binding(
            get: { presenter.viewState.searchText },
            set: { presenter.updateSearch($0) }
        )
    }

    // NavigationLink programmatic trigger — wraps the factory view
    private func navigateTo(festivalID: UUID) -> some View {
        makeDetailView(festivalID)
    }
}
