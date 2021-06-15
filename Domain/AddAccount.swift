//
//  AddAccount.swift
//  Domain
//
//  Created by bruno araujo on 15/06/21.
//

import Foundation

protocol  AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var notifications: Bool
}
