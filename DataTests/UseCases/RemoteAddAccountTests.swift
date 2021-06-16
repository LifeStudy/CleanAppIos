//
//  RemoteAddAccountTests.swift
//  RemoteAddAccountTests
//
//  Created by bruno araujo on 15/06/21.
//

import XCTest
import Domain
import Data

class RemoteAddAccountTests: XCTestCase {
    func test_add_call_correct_url() throws {
        let (sut, httpClientSpy) = makeSut()
        let url = URL(string: "http://any-url.com")!
        let addAccountModel = makeAddAccountModel()
        sut.add(addAccountModel: addAccountModel)
        XCTAssertEqual(httpClientSpy.urls, [url])
    }
    
    func test_add_call_correct_data() throws {
        let (sut, httpClientSpy) = makeSut()
        let addAccountModel = makeAddAccountModel()
        sut.add(addAccountModel: addAccountModel)
        XCTAssertEqual(httpClientSpy.data, addAccountModel.toData())
    }
}

extension RemoteAddAccountTests{
    func makeSut(url: URL = URL(string: "http://any-url.com")!) -> (sut: RemoteAddAccount, HttpClientSpy: HttpClientSpy){
        let httpClientSpy = HttpClientSpy()
        let sut = RemoteAddAccount(url: url, httpClient: httpClientSpy)
        
        return (sut, httpClientSpy)
    }
    
    func makeAddAccountModel() -> AddAccountModel {
        return AddAccountModel(name: "any_name", email: "any_email", password: "any_password", notifications: true)
    }
    
    class HttpClientSpy: HttpPostClient {
        var urls = [URL]()
        var data: Data?
        
        func post(to url: URL, with data: Data?){
            self.urls.append(url)
            self.data = data
        }
    }
}
