//
//  ManagersRegistrationModule.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//
import Dip

internal struct ManagersRegistrationModule: IRegistrationModule {
    func register(container: DependencyContainer) {

        #if FAKE
         container.register(.shared) {FetchData() as IFetchData}
        container.register(.shared) {FakeImageResponseSerializer() as IImageResponseSerializer}
        #else

        #endif

    }
}
