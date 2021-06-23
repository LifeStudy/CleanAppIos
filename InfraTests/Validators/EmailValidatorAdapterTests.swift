//
//  ValidationTests.swift
//  ValidationTests
//
//  Created by bruno araujo on 21/06/21.
//
import XCTest
import Infra

class EmailValidatorAdapterTests: XCTestCase {
    func test_invalid_emails() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "rr"))
        XCTAssertFalse(sut.isValid(email: "rr@"))
        XCTAssertFalse(sut.isValid(email: "rr@rr"))
        XCTAssertFalse(sut.isValid(email: "rr@rr."))
        XCTAssertFalse(sut.isValid(email: "@rr.com"))
    }

    func test_valid_emails() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "Araujo@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "Araujo@hotmail.com"))
        XCTAssertTrue(sut.isValid(email: "Araujo@hotmail.com"))
    }
}

extension EmailValidatorAdapterTests {
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
