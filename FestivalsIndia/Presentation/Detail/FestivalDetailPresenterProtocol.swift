import Foundation

// I: Only what FestivalDetailView needs.
protocol FestivalDetailPresenting: AnyObject {
    var viewState: DetailViewState { get }
    func onAppear()
}
