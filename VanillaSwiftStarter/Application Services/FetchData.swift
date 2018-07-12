//
//  FetchData.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

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
