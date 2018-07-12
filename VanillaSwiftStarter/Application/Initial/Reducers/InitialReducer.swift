import ReSwift

func initialScreenReducer(action: Action, state: InitialState?) -> InitialState {
    var state = state ?? InitialState(initialMessage: InitialModel(), status: .initialising)
    switch action {
    case let action as InitialActions:
        state.status = action.status
        if action.status == .switchOutText {
            state.initialMessage = action.initalModel!
        }
        if action.status == .fetchData {
            state.initialMessage = action.initalModel!
        }
    default:
        break
    }
    return state;
}
