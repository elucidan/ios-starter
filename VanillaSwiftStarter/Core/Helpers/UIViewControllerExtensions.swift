//
//  UIViewControllerExtensions.swift
//
//
//  Created by David Boyle on 17/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
extension UIViewController {
    
    class var storyboardID: String {
        return "\(self)"
    }
    
    static func instantiate(toAppStoryboard appStoryboard: AppStoryboard) -> Self {
        return appStoryboard.viewController(viewControllerClass: self)
    }
}
