//
//  UseCaseFactory.swift
//  Main
//
//  Created by bruno araujo on 22/06/21.
//

import Foundation
import Data
import Infra
import Domain

final class UseCaseFactory {
    static func makeRemoteAddAccount() -> AddAccount {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        return RemoteAddAccount(url: url, httpClient: alamofireAdapter)
    }
}
