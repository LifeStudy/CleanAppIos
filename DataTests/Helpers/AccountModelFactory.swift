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

func makeAddAccountModel() -> AddAccountModel {
    return AddAccountModel(name: "any_name", email: "any_email@mail.com", password: "any_password", passwordConfirmation:"any_password", notifications: true)
}

func makeAuthenticationModel() -> AuthenticationModel {
    return AuthenticationModel(email: "any_email@mail.com", password: "any_password")
}
