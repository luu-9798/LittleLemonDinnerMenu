//
//  LittleLemonDinnerMenuTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Trung Luu on 5/14/25.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class LittleLemonDinnerMenuTests: XCTestCase {

    func testMenuItemInitialization() {
        let ingredients: [Ingredient] = [.pasta, .tomatoSauce]
        let item = MenuItem(
            title: "Pasta",
            price: 14.0,
            category: .food,
            ordersCount: 0,
            ingredients: ingredients
        )

        XCTAssertEqual(item.title, "Pasta")
        XCTAssertEqual(item.price, 14.0)
        XCTAssertEqual(item.category, .food)
        XCTAssertEqual(item.ingredients, ingredients)
    }

    func testOrdersCountMutation() {
        var item = MenuItem(
            title: "Bruschetta",
            price: 8.5,
            category: .food,
            ordersCount: 0,
            ingredients: [.tomatoSauce]
        )
        item.ordersCount += 1
        XCTAssertEqual(item.ordersCount, 1)
    }

}
