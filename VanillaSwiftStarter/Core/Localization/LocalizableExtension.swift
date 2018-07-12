//
//  LocalizableExtension.swift
//
//
//  Created by David Boyle on 17/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

extension ILocalizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized(tableName: tableName)
    }
}
