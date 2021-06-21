//
//  SignUpViewModel.swift
//  Presentation
//
//  Created by bruno araujo on 19/06/21.
//

import Foundation
import Domain

public struct SignUpViewModel: Model  {
    public var name: String?
    public var email: String?
    public var password: String?
    public var passwordConfirmation: String?
    public var notifications: Bool?

    
    public init(name: String? = nil, email: String? = nil, password: String? = nil, passwordConfirmation: String? = nil, notifications: Bool? = false) {
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
        self.notifications = notifications
    }
}
