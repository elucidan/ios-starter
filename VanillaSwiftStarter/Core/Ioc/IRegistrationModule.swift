//
//  IRegistrationModule.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//
import Dip

internal protocol IRegistrationModule {
    func register(container: DependencyContainer)
}
