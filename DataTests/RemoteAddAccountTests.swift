//
//  RemoteAddAccountTests.swift
//  RemoteAddAccountTests
//
//  Created by bruno araujo on 15/06/21.
//

import XCTest
import Domain

class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    init(url: URL, httpClient:HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    func add(addAccountModel: AddAccountModel) {
        let data = try? JSONEncoder().encode(addAccountModel)
        httpClient.post(to: url, with: data)
    }
}

protocol HttpPostClient {
    func post(to url: URL, with data: Data?)
}

class RemoteAddAccountTests: XCTestCase {
    func test_add_call_correct_url() throws {
        let url = URL(string: "http://any-url.com")!
        let hrrpClientSpy = HttpClientSpy()
        let sut = RemoteAddAccount(url: url, httpClient: hrrpClientSpy)
        let addAccountModel = makeAddAccountModel()
        sut.add(addAccountModel: addAccountModel)
        XCTAssertEqual(hrrpClientSpy.url, url)
    }
    
    func test_add_call_correct_data() throws {
        let hrrpClientSpy = HttpClientSpy()
        let sut = RemoteAddAccount(url: URL(string: "http://any-url.com")!, httpClient: hrrpClientSpy)
        let addAccountModel = makeAddAccountModel()
        sut.add(addAccountModel: addAccountModel)
        let data = try? JSONEncoder().encode(addAccountModel)
        XCTAssertEqual(hrrpClientSpy.data, data)
    }
}

extension RemoteAddAccountTests{
    func makeAddAccountModel() -> AddAccountModel {
        return AddAccountModel(name: "any_name", email: "any_email", password: "any_password", notifications: true)
    }
    
    class HttpClientSpy: HttpPostClient {
        var url:URL?
        var data: Data?
        
        func post(to url: URL, with data: Data?){
            self.url = url
            self.data = data
        }
    }
}
