//
//  MenuItemProtocol.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var price: Double { get set }
    var category: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
}
