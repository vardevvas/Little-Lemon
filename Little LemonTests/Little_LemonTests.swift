//
//  Little_LemonTests.swift
//  Little LemonTests
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import XCTest
@testable import Little_Lemon

final class Little_LemonTests: XCTestCase {
    
    func testMenuItemTitle() {
            let menuItem = MenuItem(title: "Test Title", menuCategory: .food, ordersCount: 0, price: 0.0, ingredients: [])
            XCTAssertEqual(menuItem.title, "Test Title")
        }
    func testMenuItemIngredients() {
            let ingredients: [Ingredient] = [.spinach, .carrot]
            let menuItem = MenuItem(title: "Test Item", menuCategory: .food, ordersCount: 0, price: 0.0, ingredients: ingredients)
            XCTAssertEqual(menuItem.ingredients, ingredients)
        }


    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
