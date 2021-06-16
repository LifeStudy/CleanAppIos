//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by bruno araujo on 16/06/21.
//

import Foundation
import Domain

func makeAccountModel() -> AccountModel {
    return AccountModel(name: "any_name", email: "any_email", token: "any_token", notifications: true)
}
