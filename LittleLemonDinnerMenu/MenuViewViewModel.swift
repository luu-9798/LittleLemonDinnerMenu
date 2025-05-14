//
//  MenuViewViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import Foundation
import Combine

class MenuViewViewModel: ObservableObject {
    @Published var foodItems    : [MenuItem] = []
    @Published var drinkItems   : [MenuItem] = []
    @Published var dessertItems : [MenuItem] = []

    init() {
        loadMockData()
    }
    
    private func loadMockData() {
        foodItems = [
            MenuItem(title: "Food 1", price: 9.99, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.spinach, .tomatoSauce]),
            MenuItem(title: "Food 2", price: 10.50, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.broccoli]),
            MenuItem(title: "Food 3", price: 8.25, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.carrot, .pasta]),
            MenuItem(title: "Food 4", price: 11.00, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.pasta, .tomatoSauce]),
            MenuItem(title: "Food 5", price: 10.99, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.spinach, .broccoli, .carrot]),
            MenuItem(title: "Food 6", price: 12.50, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.pasta, .spinach]),
            MenuItem(title: "Food 7", price: 7.75, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.carrot]),
            MenuItem(title: "Food 8", price: 13.00, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.broccoli, .spinach]),
            MenuItem(title: "Food 9", price: 14.25, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.pasta, .broccoli]),
            MenuItem(title: "Food 10", price: 6.50, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.tomatoSauce]),
            MenuItem(title: "Food 11", price: 9.00, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.carrot, .spinach]),
            MenuItem(title: "Food 12", price: 11.99, category: .food, ordersCount: Int.random(in: 0...100),
                     ingredients: [.pasta])
        ]

        drinkItems = [
            MenuItem(title: "Drink 1", price: 12.50, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 2", price: 11.00, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 3", price: 10.75, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 4", price: 9.50, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 5", price: 11.25, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 6", price: 12.00, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 7", price: 4.00, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: []),
            MenuItem(title: "Drink 8", price: 3.50, category: .drink, ordersCount: Int.random(in: 0...100), ingredients: [])
        ]

        dessertItems = [
            MenuItem(title: "Dessert 1", price: 6.75, category: .dessert, ordersCount: Int.random(in: 0...100),
                     ingredients: [.carrot]),
            MenuItem(title: "Dessert 2", price: 7.25, category: .dessert, ordersCount: Int.random(in: 0...100),
                     ingredients: []),
            MenuItem(title: "Dessert 3", price: 6.50, category: .dessert, ordersCount: Int.random(in: 0...100),
                     ingredients: [.spinach]),
            MenuItem(title: "Dessert 4", price: 5.00, category: .dessert, ordersCount: Int.random(in: 0...100),
                     ingredients: [])
        ]
    }
}
