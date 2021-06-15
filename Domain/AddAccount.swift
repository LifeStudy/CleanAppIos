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

public struct AddAccountModel: Encodable {
    public var name: String
    public var email: String
    public var password: String
    public var notifications: Bool
    
    public init(name:String, email:String, password:String, notifications:Bool){
        self.name = name
        self.email = email
        self.password = password
        self.notifications = notifications
    }
}
