//
//  UILocalizedTextArea.swift
//
//
//  Created by David Boyle on 27/02/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable class UILocalizedTextArea: UITextField {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            let placeholder = self.placeholder?.localized(tableName: tableName)
            self.placeholder = placeholder
        }
    }
}
