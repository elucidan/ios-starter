//
//  UILocalizedTabBarItem.swift
//
//
//  Created by David Boyle on 15/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
@IBDesignable final class UILocalizedTabBarItem: UITabBarItem {
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            title = title?.localized(tableName: tableName)
        }
    }
}
