//
//  Model.swift
//  Domain
//
//  Created by bruno araujo on 15/06/21.
//

import Foundation

public protocol Model: Encodable {}

public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
