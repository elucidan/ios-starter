import ReSwift
struct InitialState: StateType {
    var initialMessage: InitialModel
    var status: InitialStateStatus = .initialising
}

enum InitialStateStatus {
    case initialising
    case switchOutText
    case fetchData
    case switchScreens
}
