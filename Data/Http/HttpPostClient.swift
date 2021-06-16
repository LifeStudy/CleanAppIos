//
//  HttpPostClient.swift
//  Data
//
//  Created by bruno araujo on 15/06/21.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (HttpError) -> Void)
}