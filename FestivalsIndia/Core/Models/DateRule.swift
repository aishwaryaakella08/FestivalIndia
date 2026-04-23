import Foundation

// S: DateRule only knows how to resolve a date. Nothing else.
// O: Add new cases (e.g. .islamic, .solar) without touching Festival or Repository.
enum DateRule: Codable {
    /// Same Gregorian month/day every year — e.g. Pongal Jan 14, Baisakhi Apr 13.
    case fixed(month: Int, day: Int)

    /// Lunisolar festivals that shift yearly. knownDates maps year → (month, day).
    /// Falls back to the nearest known year when queried for an unmapped year.
    case lunisolar(knownDates: [Int: MonthDay])

    func date(for year: Int) -> Date? {
        let calendar = Calendar(identifier: .gregorian)
        switch self {
        case .fixed(let month, let day):
            return calendar.date(from: DateComponents(year: year, month: month, day: day))

        case .lunisolar(let knownDates):
            if let md = knownDates[year] {
                return calendar.date(from: DateComponents(year: year, month: md.month, day: md.day))
            }
            // Nearest known year used as a best-effort approximation
            let nearest = knownDates.keys.min(by: { abs($0 - year) < abs($1 - year) })!
            let md = knownDates[nearest]!
            return calendar.date(from: DateComponents(year: year, month: md.month, day: md.day))
        }
    }
}

struct MonthDay: Codable {
    let month: Int
    let day: Int
}
