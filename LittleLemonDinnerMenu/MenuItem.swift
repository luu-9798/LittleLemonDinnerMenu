//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import Foundation

struct MenuItem: Identifiable, MenuItemProtocol {
    let id = UUID()
    let title: String
    var price: Double
    let category: MenuCategory
    var ordersCount: Int
    var ingredients: [Ingredient]
}
