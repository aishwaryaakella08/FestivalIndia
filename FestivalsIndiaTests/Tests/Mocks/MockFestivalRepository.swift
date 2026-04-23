import Foundation
@testable import FestivalsIndia

// L: MockFestivalRepository is a valid substitute for FestivalRepository anywhere
//    FestivalRepositoryProtocol is expected — this is Liskov Substitution in practice.
final class MockFestivalRepository: FestivalRepositoryProtocol {

    // Inject whatever fixtures each test needs
    var festivals: [Festival]

    // Spy: record which calls were made
    var fetchAllCallCount = 0
    var fetchByRegionCallCount = 0
    var searchCallCount = 0
    var lastSearchQuery: String?
    var lastSearchRegion: Region?

    init(festivals: [Festival] = MockFestivals.samples) {
        self.festivals = festivals
    }

    func fetchAll() -> [Festival] {
        fetchAllCallCount += 1
        return festivals
    }

    func fetch(by region: Region) -> [Festival] {
        fetchByRegionCallCount += 1
        guard region != .all else { return festivals }
        return festivals.filter { $0.region == region }
    }

    func fetch(id: UUID) -> Festival? {
        festivals.first { $0.id == id }
    }

    func search(query: String, in region: Region) -> [Festival] {
        searchCallCount += 1
        lastSearchQuery = query
        lastSearchRegion = region
        let pool = fetch(by: region)
        guard !query.isEmpty else { return pool }
        return pool.filter {
            $0.name.localizedCaseInsensitiveContains(query) ||
            $0.tagline.localizedCaseInsensitiveContains(query)
        }
    }

    func upcomingFestivals(from date: Date, yearRange: ClosedRange<Int>) -> [(Festival, Date)] {
        var results: [(Festival, Date)] = []
        for festival in festivals {
            for year in yearRange {
                if let d = festival.date(for: year), d >= date {
                    results.append((festival, d))
                    break
                }
            }
        }
        return results.sorted { $0.1 < $1.1 }
    }
}

// MARK: - Shared test fixtures

enum MockFestivals {
    static let diwali = Festival(
        id: UUID(uuidString: "AAAAAAAA-0000-0000-0000-000000000001")!,
        name: "Diwali",
        region: .panIndia,
        dateRule: .lunisolar(knownDates: [
            2025: MonthDay(month: 10, day: 20),
            2026: MonthDay(month: 11, day: 8)
        ]),
        emoji: "🪔",
        colorHex: "f57f17",
        tagline: "Festival of Lights",
        importance: "Diwali importance text.",
        rituals: ["Light diyas", "Share sweets"],
        funFacts: ["Visible from space"]
    )

    static let pongal = Festival(
        id: UUID(uuidString: "AAAAAAAA-0000-0000-0000-000000000002")!,
        name: "Pongal",
        region: .south,
        dateRule: .fixed(month: 1, day: 14),
        emoji: "🌾",
        colorHex: "2e7d32",
        tagline: "Tamil harvest festival",
        importance: "Pongal importance text.",
        rituals: ["Cook pongal", "Shout Pongalo Pongal"],
        funFacts: ["2000 years old"]
    )

    static let lohri = Festival(
        id: UUID(uuidString: "AAAAAAAA-0000-0000-0000-000000000003")!,
        name: "Lohri",
        region: .north,
        dateRule: .fixed(month: 1, day: 13),
        emoji: "🔥",
        colorHex: "e65100",
        tagline: "Bonfire night welcoming the harvest",
        importance: "Lohri importance text.",
        rituals: ["Light bonfire"],
        funFacts: ["Derived from loh"]
    )

    static let samples: [Festival] = [diwali, pongal, lohri]
}
