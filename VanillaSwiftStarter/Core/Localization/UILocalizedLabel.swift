//
//  UILocalizedLabel.swift
//
//
//  Created by David Boyle on 15/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
@IBDesignable final class UILocalizedLabel: UILabel {
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            text = text?.localized(tableName: tableName)
        }
    }

    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: 0, left: 5, bottom: 0, right: 5)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
}
