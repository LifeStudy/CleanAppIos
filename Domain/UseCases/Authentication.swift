//
//  AddAccount.swift
//  Domain
//
//  Created by bruno araujo on 27/06/21.
//

import Foundation

public protocol Authentication {
    typealias Result = Swift.Result<AccountModel, DomainError>
    func add(AuthenticationModel: AuthenticationModel, completion: @escaping (Result) -> Void)
}

public struct AuthenticationModel: Model {
    public var email: String
    public var password: String
    
    public init(email:String, password:String){
        self.email = email
        self.password = password
    }
}
