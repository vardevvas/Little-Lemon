//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    @Binding var menuItem: MenuItem
    
    var body: some View {
        NavigationView{
            VStack {
                Image("Little Lemon logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .padding(8)
                
                Text("Title: \(menuItem.title)")
                    .font(.headline)
                Text("Orders Count: \(menuItem.ordersCount)")
                    .font(.subheadline)
                Text("Ingredients:")
                    .font(.headline)
                // Display ingredients as a list
                ForEach(menuItem.ingredients, id: \.rawValue){
                    ingredient in Text(ingredient.rawValue)
                }
                
                .frame(maxWidth: .infinity)
                //        .background(Color.blue)
                .cornerRadius(8)
            }
        }
    }
}

//#Preview {
//    MenuItemDetailsView(menuItem: )
//}
