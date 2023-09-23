//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 21/09/2023.
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

struct MenuItem: MenuItemProtocol, Identifiable {
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
