//
//  ExtensionHelpers.swift
//  Data
//
//  Created by bruno araujo on 16/06/21.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
    
    func toJson() -> [String: Any]? {
        return try? JSONSerialization.jsonObject(with: self, options: .allowFragments) as? [String: Any]
    }
}
