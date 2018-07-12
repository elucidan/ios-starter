//
//  AppStoryboard.swift
//  elucidan
//
//  Created by David Boyle on 17/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
enum AppStoryboard: String {
    case Initial, Subsequent
    
    var instance: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instance.instantiateViewController(withIdentifier: storyboardID) as! T
    }
    
    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
}
