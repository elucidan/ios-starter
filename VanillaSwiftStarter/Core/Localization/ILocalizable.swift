//
//  ILocalizable.swift
//
//
//  Created by David Boyle on 17/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

protocol ILocalizable {
    var tableName: String { get }
    var localized: String { get }
}
