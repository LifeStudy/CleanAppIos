//
//  Validation.swift
//  Presentation
//
//  Created by bruno araujo on 23/06/21.
//

import Foundation

public protocol Validation {
    func validate(data: [String: Any]?) -> String?
}
