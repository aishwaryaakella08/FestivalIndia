import SwiftUI

struct FestivalDetailDisplayModel {
    let id: UUID
    let name: String
    let emoji: String
    let regionLabel: String
    let regionEmoji: String
    let gradientColors: [Color]
    let accentColor: Color
    let dateText: String
    let countdownText: String?
    let countdownColor: Color?
    let importance: String
    let rituals: [String]
    let funFacts: [String]
}

struct DetailViewState {
    var content: FestivalDetailDisplayModel?
    var isLoading: Bool

    static let loading = DetailViewState(content: nil, isLoading: true)
}
