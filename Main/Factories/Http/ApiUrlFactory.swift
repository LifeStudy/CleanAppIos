//
//  ApiUrlFactory.swift
//  Main
//
//  Created by bruno araujo on 23/06/21.
//

import Foundation

func makeApiUrl(path: String) -> URL {
    return URL(string: "\(Environment.variable(.apiBaseUrl))/\(path)")!
}
