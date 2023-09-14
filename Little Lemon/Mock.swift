//
//  Mock.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 14/09/2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var price: Double { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: MenuItemProtocol {
    var id = UUID()
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var price: Double
    var ingredients: [Ingredient]
    
    init(title: String, menuCategory: MenuCategory, ordersCount: Int, price: Double, ingredients: [Ingredient]) {
        self.title = title
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.price = price
        self.ingredients = ingredients
    }
}

//let foodMenuItems: [MenuItem] = [
//    MenuItem(title: "Spaghetti Bolognese", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Chicken Alfredo", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Margherita Pizza", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Caesar Salad", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Burger and Fries", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Sushi Platter", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Taco Supreme", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Grilled Salmon", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Pad Thai", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Beef Stir-Fry", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Vegetable Curry", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Mushroom Risotto", Ingredients: [.broccoli,.carrot]),
//]
//
//let drinkMenuItems: [MenuItem] = [
//    MenuItem(title: "Coca-Cola", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Iced Tea", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Orange Juice", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Lemonade", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Coffee", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Mojito", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Water", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Milkshake", Ingredients: [.broccoli,.carrot]),
//]
//
//let dessertMenuItems: [MenuItem] = [
//    MenuItem(title: "Chocolate Cake", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Apple Pie", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Cheesecake", Ingredients: [.broccoli,.carrot]),
//    MenuItem(title: "Ice Cream Sundae", Ingredients: [.broccoli,.carrot]),
//]

class MenuViewViewModel{
    // Mock data
    var mockMenuItems: [MenuItem] = []

    // Create 12 food MenuItems
    func createMock(){
        for i in 1...12 {
            let foodItem = MenuItem(
                title: "Food Item \(i)",
                menuCategory: .food,
                ordersCount: i * 2,
                price: Double(i) * 5.99,
                ingredients: [.pasta, .spinach, .broccoli]
            )
            mockMenuItems.append(foodItem)
        }

        // Create 8 drink MenuItems
        for i in 1...8 {
            let drinkItem = MenuItem(
                title: "Drink Item \(i)",
                menuCategory: .drink,
                ordersCount: i * 3,
                price: Double(i) * 2.49,
                ingredients: [.carrot, .tomato_sauce]
            )
            mockMenuItems.append(drinkItem)
        }

        // Create 4 dessert MenuItems
        for i in 1...4 {
            let dessertItem = MenuItem(
                title: "Dessert Item \(i)",
                menuCategory: .desert,
                ordersCount: i * 4,
                price: Double(i) * 3.99,
                ingredients: [.carrot, .spinach]
            )
            mockMenuItems.append(dessertItem)
        }

    }
}
