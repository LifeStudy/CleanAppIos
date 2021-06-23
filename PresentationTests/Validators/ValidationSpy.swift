//
//  ValidationSpy.swift
//  PresentationTests
//
//  Created by bruno araujo on 23/06/21.
//

import Foundation
import Presentation

class ValidationSpy: Validation {
    var data: [String: Any]?
    var errorMessage: String?
    
    func validate(data: [String : Any]?) -> String? {
        self.data = data
        return errorMessage
    }
    
    func simulateError() {
        self.errorMessage = "Erro"
    }
}
