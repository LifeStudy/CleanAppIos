//
//  HttpError.swift
//  Data
//
//  Created by bruno araujo on 16/06/21.
//

import Foundation

public enum HttpError: Error {
     case noConnectivity
     case badRequest
     case serverError
     case unauthorized
     case forbidden
 }
