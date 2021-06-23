//
//  RemoteaddAccountFactory.swift
//  Main
//
//  Created by bruno araujo on 23/06/21.
//

import Foundation
import Data
import Domain

func makeRemoteAddAccount(httpClient: HttpPostClient) -> AddAccount {
    let remoteAddAccount = RemoteAddAccount(url: makeApiUrl(path: "users"), httpClient: httpClient)
    return MainQueueDispatchDecorator(remoteAddAccount)
}
