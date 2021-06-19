//
//  SignUpMapper.swift
//  Presentation
//
//  Created by bruno araujo on 19/06/21.
//

import Foundation
import Domain

public final class SignUpMapper {
    static func toAddAccountModel(viewModel: SignUpViewModel) -> AddAccountModel {
        return AddAccountModel(name: viewModel.name!, email: viewModel.email!, password: viewModel.password!, passwordConfirmation: viewModel.passwordConfirmation!, notifications: true)
    }
}
