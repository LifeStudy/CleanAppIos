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

func makeError() -> Error {
    return NSError(domain: "any_error", code: 0)
}

func makeEmptyData() -> Data {
     return Data()
 }

func makeHttpResponse(statusCode: Int = 200) -> HTTPURLResponse {
    return HTTPURLResponse(url: makeUrl(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
}

func makeUrl() -> URL {
    return URL(string: "http://any-url.com")!
}
