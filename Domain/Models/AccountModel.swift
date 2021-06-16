//
//  AccountModel.swift
//  Domain
//
//  Created by bruno araujo on 15/06/21.
//

import Foundation

public struct AccountModel: Model {
    public var name: String
    public var email: String
    public var token: String
    public var notifications: Bool
    
    public init(name:String, email:String, token:String, notifications:Bool){
        self.name = name
        self.email = email
        self.token = token
        self.notifications = notifications
    }
}
