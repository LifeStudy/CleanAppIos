//
//  SignUpIntegrationTests.swift
//  MainTests
//
//  Created by bruno araujo on 22/06/21.
//

import XCTest

import XCTest
import Main

class SignUpComposerTests: XCTestCase {
    func test_ui_presentation_integration() {
        let sut = SignUpComposer.composeControllerWith(addAccount: AddAccountSpy())
        checkMemoryLeak(for: sut)
    }
}
