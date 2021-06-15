//
//  RemoteAddAccountTests.swift
//  RemoteAddAccountTests
//
//  Created by bruno araujo on 15/06/21.
//

import XCTest

class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    init(url: URL, httpClient:HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    func add() {
        httpClient.post(url: url)
    }
}

protocol HttpPostClient {
    func post(url: URL)
}

class RemoteAddAccountTests: XCTestCase {
    func test_add_call_correct_url() throws {
        let url = URL(string: "http://any-url.com")!
        let hrrpClientSpy = HttpClientSpy()
        let sut = RemoteAddAccount(url: url, httpClient: hrrpClientSpy)
        sut.add()
        XCTAssertEqual(hrrpClientSpy.url, url)
    }
}

extension RemoteAddAccountTests{
    class HttpClientSpy: HttpPostClient {
        var url:URL?
        
        func post(url: URL){
            self.url = url
        }
    }
}
