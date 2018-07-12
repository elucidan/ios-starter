import Foundation
import ReSwift

protocol IFetchData {
    func getMessage(state: InitialState, store: Store<InitialState>) -> Action?
}
