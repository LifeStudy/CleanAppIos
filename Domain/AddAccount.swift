//
//  AddAccount.swift
//  Domain
//
//  Created by bruno araujo on 15/06/21.
//

import Foundation

public protocol  AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

public struct AddAccountModel {
    public var name: String
    public var email: String
    public var password: String
    public var notifications: Bool
}
