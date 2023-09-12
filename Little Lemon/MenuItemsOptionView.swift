//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]

    var body: some View {
        NavigationView{
            List{
                Section(header: Text("SELECTED CATEGORIES")){
                    List {
                            Text("Food")
                            Text("Drink")
                            Text("Desert")
                    }
                }
                Section(header: Text("Sort By")){
                    List {
                        Text("Most Popular")
                        Text("Price $-$$$")
                        Text("A-Z")
                    }
                }
            }.navigationTitle("Filter")
        }
    }
}

#Preview {
    MenuItemsOptionView()
}
