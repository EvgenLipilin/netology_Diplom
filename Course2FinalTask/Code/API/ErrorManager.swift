//
//  ErrorManager.swift
//  Course2FinalTask
//
//  Created by Евгений on 19.02.2021.
//  Copyright © 2021 e-Legion. All rights reserved.
//

import Foundation

enum ErrorManager: String, Error {
    case unauthorized
    case offlineMode
    case login

    var localized: String {
      switch self {
        case .unauthorized:
return NSLocalizedString("Unauthorized", tableName: "Localizable", bundle: .main, value: "", comment: "")
      case .offlineMode:
        return NSLocalizedString("Offline Mode", tableName: "Localizable", bundle: .main, value: "", comment: "")
      case .login:
        return NSLocalizedString("invalid username or password", tableName: "Localizable", bundle: .main, value: "", comment: "")
      }
    }
}
