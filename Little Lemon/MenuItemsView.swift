//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

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

let viewModel: MenuViewViewModel = {
    let viewModel = MenuViewViewModel()
    viewModel.createMock()
    return viewModel
}()

struct GridItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .padding(5)
                
            
            Text(title)
                .font(.headline)
        }
    }
}


struct MenuItemsView: View {
    @State private var isFilterViewPresented = false


    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]
    func filteredMenuItems(category: MenuCategory) -> [MenuItem] {
        return viewModel.mockMenuItems.filter { $0.menuCategory == category }
    }

    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(MenuCategory.allCases, id: \.rawValue) { category in
                        Section(header: Text(category.rawValue)){
                            LazyVGrid(columns: columns, spacing: 16){
                                ForEach(filteredMenuItems(category: category)) { menuItem in
                                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {
                                        GridItemView(imageName: "photo", title: menuItem.title)
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Menu")
                .toolbar {
                    Button(action: {
                        isFilterViewPresented.toggle()
                    }) {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                    }
                    .sheet(isPresented: $isFilterViewPresented) {
                        MenuItemsOptionView(isPresented: isFilterViewPresented)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
