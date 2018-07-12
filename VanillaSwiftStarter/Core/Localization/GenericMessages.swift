//
//  GenericMessages.swift
//
//
//  Created by David Boyle on 17/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

enum GenericMessages: String, ILocalizable {
    case title = "title"
    case wait = "wait"
    case saved = "saved"
    case failed = "failed"
    
    var tableName: String {
        return "GenericMessages"
    }
}
