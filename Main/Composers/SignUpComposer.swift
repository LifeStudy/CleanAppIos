//
//  SignUpComposer.swift
//  Main
//
//  Created by bruno araujo on 22/06/21.
//

import Foundation
import Domain
import UI

public final class SignUpComposer {
    public static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        return ControllerFactory.makeSignUp(addAccount: addAccount)
    }
}
