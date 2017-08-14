//
//  iQiitaTests.swift
//  iQiitaTests
//
//  Created by 葦沢尚也 on 2017/08/09.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//


import Foundation
import Nimble
import Quick


class iQiitaTests: QuickSpec {
    
    var itemusecase = ItemUseCase()
    
    override func spec(){
        describe("アイテム取得", {
            it("20件取得できること", closure: {
                var result = itemusecase.getItems()
                expect(result).notTo(beNil())
                
            })
        })
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
