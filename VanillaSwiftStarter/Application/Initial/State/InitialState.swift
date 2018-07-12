//
//  InitialState.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

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
