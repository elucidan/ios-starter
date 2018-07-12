//
//  IFetchData.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Foundation
import ReSwift

protocol IFetchData {
    func getMessage(state: InitialState, store: Store<InitialState>) -> Action?
}
