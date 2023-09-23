//
//  MenuItemViewModel.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 23/09/2023.
//

import Foundation

class MenuViewViewModel: ObservableObject{
    // Mock data
    @Published var foodMenuItems: [MenuItem] = []
    @Published var drinkMenuItems: [MenuItem] = []
    @Published var dessertMenuItems: [MenuItem] = []
    init() {
        foodMenuItems = makeFoodMenuItems()
        drinkMenuItems = makeDrinkMenuItems()
        dessertMenuItems = makeDessertMenuItems()
    }
    // Create 12 food MenuItems
    private func makeFoodMenuItems() -> [MenuItem]{
        (1...12)
            .map {
                MenuItem(
                    title: "Food Item \($0)",
                    menuCategory: .food,
                    ordersCount: $0 * 2,
                    price: Double($0) * 5.99,
                    ingredients: [.pasta, .spinach, .broccoli]
                )
            }
    }
    // Create 8 drink MenuItems
    private func makeDrinkMenuItems() -> [MenuItem]{
        (1...8)
            .map {
                MenuItem(
                    title: "Drink Item \($0)",
                    menuCategory: .drink,
                    ordersCount: $0 * 3,
                    price: Double($0) * 2.49,
                    ingredients: [.carrot, .tomato_sauce]
                )
            }
    }
    // Create 4 dessert MenuItems
    private func makeDessertMenuItems() -> [MenuItem]{
        (1...4)
            .map {
                MenuItem(
                    title: "Dessert Item \($0)",
                    menuCategory: .desert,
                    ordersCount: $0 * 4,
                    price: Double($0) * 3.99,
                    ingredients: [.carrot, .spinach]
                )
            }
    }
}
