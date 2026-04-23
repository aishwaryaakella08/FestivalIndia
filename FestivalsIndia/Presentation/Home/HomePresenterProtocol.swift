import Foundation

// I: Only the actions HomeView will ever call. Nothing extra.
// D: HomeView depends on this protocol, not HomePresenter directly.
protocol HomePresenting: AnyObject {
    var viewState: HomeViewState { get }
    func selectRegion(_ region: Region)
    func updateSearch(_ text: String)
    func onAppear()
}
