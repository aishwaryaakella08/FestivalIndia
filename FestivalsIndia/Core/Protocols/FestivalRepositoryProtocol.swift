import Foundation

// D: Presenters depend on this protocol, never on FestivalRepository directly.
// O: Swap in a remote API repository without changing any Presenter.
// I: Only the methods callers actually need — no bloated interface.
protocol FestivalRepositoryProtocol {
    func fetchAll() -> [Festival]
    func fetch(by region: Region) -> [Festival]
    func fetch(id: UUID) -> Festival?
    func search(query: String, in region: Region) -> [Festival]

    /// Returns (festival, date) pairs sorted by date for the given year range,
    /// filtered to dates on or after `from`.
    func upcomingFestivals(from: Date, yearRange: ClosedRange<Int>) -> [(Festival, Date)]
}
