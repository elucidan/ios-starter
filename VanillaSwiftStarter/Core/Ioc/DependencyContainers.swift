//
//  DependencyContainers.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Dip
import Dip_UI

func configure(_ container: DependencyContainer) {
    ManagersRegistrationModule().register(container: container)
    ControllersRegistrationModule().register(container: container)
    DependencyContainer.uiContainers = [container]
}
