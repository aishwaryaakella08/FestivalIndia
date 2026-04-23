import SwiftUI

// S: Pure UI-facing data. No domain logic. Views own nothing else.
// Presenters produce these; Views consume them.

struct RegionTabItem: Identifiable, Equatable {
    let id: String
    let title: String
    let emoji: String
    let gradient: [Color]
    let region: Region      // kept for tap-action routing only
}

struct FestivalRowDisplayModel: Identifiable, Hashable {
    let id: UUID
    let name: String
    let emoji: String
    let tagline: String
    let regionLabel: String
    let gradientColors: [Color]
    let accentColor: Color
    let daysAwayText: String?
    let daysAwayColor: Color?
}

struct NextFestivalDisplayModel {
    let festivalID: UUID
    let name: String
    let emoji: String
    let tagline: String
    let gradientColors: [Color]
    let countdownText: String
}

struct HomeViewState {
    var selectedRegion: Region
    var searchText: String
    var regionTabs: [RegionTabItem]
    var festivals: [FestivalRowDisplayModel]
    var nextFestival: NextFestivalDisplayModel?
    var notificationsEnabled: Bool

    static let empty = HomeViewState(
        selectedRegion: .all,
        searchText: "",
        regionTabs: [],
        festivals: [],
        nextFestival: nil,
        notificationsEnabled: false
    )
}
