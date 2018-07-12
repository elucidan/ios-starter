//
//  UILocalizedButton.swift
//
//
//  Created by David Boyle on 15/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
@IBDesignable class UILocalizedButton: UIButton {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            let title = self.title(for: .normal)?.localized(tableName: tableName)
            setTitle(title, for: .normal)
        }
    }
}
