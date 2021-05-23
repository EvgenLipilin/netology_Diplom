//
//  ErrorManager.swift
//  Course2FinalTask
//
//  Created by Евгений on 19.02.2021.
//  Copyright © 2021 e-Legion. All rights reserved.
//

import Foundation

enum ErrorManager: String, Error {
    case unauthorized = "Unauthorized"
    case offlineMode = "Offline Mode"
    case login = "invalid username or password"
}

