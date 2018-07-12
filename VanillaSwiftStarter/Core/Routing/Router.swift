//
//  Router.swift
//  VanillaSwiftStarter
//
//  Created by David Boyle on 12/07/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Foundation
import UIKit

class Router {
    static func navigate(from: UIViewController, to destination: ApplicationCoordinator) {
        switch destination {
        case .initial:
            print("screen1")
        case .subsequent:
            let viewController = UIStoryboard(name: "Subsequent", bundle: nil).instantiateViewController(withIdentifier: "SubsequentController" )
            from.present(viewController, animated: false)
        }
    }
}
