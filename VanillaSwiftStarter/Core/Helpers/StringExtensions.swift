//
//  StringExtensions.swift
//
//
//  Created by David Boyle on 15/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import Foundation
extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
