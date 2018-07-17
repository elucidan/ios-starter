import Foundation
import ReSwift

class FetchData: IFetchData {
    func getMessage(state: InitialState, store: Store<InitialState>) -> Action? {
        let initialModel = InitialModel()
        initialModel.fetchedData = "here is some data that has been fetched"
        store.dispatch(InitialActions(status: .fetchData, initalModel: initialModel))
        return nil
    }
}
