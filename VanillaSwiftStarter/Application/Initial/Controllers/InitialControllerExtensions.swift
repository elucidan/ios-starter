//
//  InitialControllerExtensions.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Dip_UI
import ReSwift

extension InitialController: StoryboardInstantiatable { }

extension InitialController: StoreSubscriber {
    func newState(state: InitialState) {
        switch state.status {
        case .switchOutText:
           helloMessage.text = state.initialMessage.changedMessage
        case .fetchData:
            helloMessage.text = state.initialMessage.fetchedData
        case .switchScreens:
            Router.navigate(from: self, to: .subsequent)
        default:
            break
        }
    }
    
    typealias StoreSubscriberStateType = InitialState
}
