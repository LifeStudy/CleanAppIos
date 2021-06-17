//
//  TestFactories.swift
//  DataTests
//
//  Created by bruno araujo on 16/06/21.
//

import Foundation

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}

func makeValidData() -> Data {
     return Data("{\"name\":\"Araujo\"}".utf8)
 }

func makeUrl() -> URL {
    return URL(string: "http://any-url.com")!
}
