//
//  EmailValidator.swift
//  Presentation
//
//  Created by bruno araujo on 18/06/21.
//

import Foundation

public protocol EmailValidator {
     func isValid(email: String) -> Bool
}
