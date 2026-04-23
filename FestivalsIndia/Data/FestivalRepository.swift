import Foundation

// S: Only responsibility is fetching and filtering Festival domain objects.
// O: Extend by conforming to FestivalRepositoryProtocol with a RemoteFestivalRepository
//    without changing any Presenter that already depends on the protocol.
// L: Drop-in replacement for any caller of FestivalRepositoryProtocol.
final class FestivalRepository: FestivalRepositoryProtocol {

    private let festivals: [Festival]

    // D: Data source is injected, not hardcoded — swap FestivalsData.all for a JSON loader, etc.
    init(festivals: [Festival] = FestivalsData.all) {
        self.festivals = festivals
    }

    func fetchAll() -> [Festival] {
        festivals
    }

    func fetch(by region: Region) -> [Festival] {
        guard region != .all else { return festivals }
        return festivals.filter { $0.region == region }
    }

    func fetch(id: UUID) -> Festival? {
        festivals.first { $0.id == id }
    }

    func search(query: String, in region: Region) -> [Festival] {
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
                    break   // take only the earliest future occurrence per festival
                }
            }
        }
        return results.sorted { $0.1 < $1.1 }
    }
}
