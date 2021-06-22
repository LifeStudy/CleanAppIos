//
//  UsaCasesIntegrationTests.swift
//  UsaCasesIntegrationTests
//
//  Created by bruno araujo on 17/06/21.
//

import XCTest
import Data
import Infra
import Domain

class AddAccountIntegrationTests: XCTestCase {
    func test_add_account() {
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://www.abibliadigital.com.br/api/users")!
        //let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Bruno Araujo", email: "bruno8@email.com", password: "123456", passwordConfirmation: "123456", notifications: false)
        let exp = expectation(description: "waiting")
        sut.add(addAccountModel: addAccountModel) { result in
        switch result {
            case .failure: XCTFail("Expect success got \(result) instead")
            case .success(let account):
                print(account.token)
                XCTAssertNotNil(account.token)
                XCTAssertEqual(account.name, addAccountModel.name)
                XCTAssertEqual(account.email, addAccountModel.email)
        }
        exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
}
