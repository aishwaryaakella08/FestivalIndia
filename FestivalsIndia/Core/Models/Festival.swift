import Foundation

// S: Pure domain model. No UI, no formatting, no colors.
// Views never touch this directly — Presenters transform it into DisplayModels.
struct Festival: Identifiable, Codable {
    let id: UUID
    let name: String
    let region: Region
    let dateRule: DateRule
    let emoji: String
    let colorHex: String    // stored as hex; UI color created in Presenter
    let tagline: String
    let importance: String
    let rituals: [String]
    let funFacts: [String]

    func date(for year: Int) -> Date? {
        dateRule.date(for: year)
    }

    func notificationDate(for year: Int) -> Date? {
        guard let d = date(for: year) else { return nil }
        return Calendar.current.date(byAdding: .day, value: -1, to: d)
    }
}
