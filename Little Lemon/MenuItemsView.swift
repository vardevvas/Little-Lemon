//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct GridItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(8)
            
            Text(title)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(8)
    }
}


struct MenuItemsView: View {

    
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]

    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Food")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: columns, spacing: 16) {
                            ForEach(0..<5) { index in
                                GridItemView(imageName: "photo", title: "Item \(index + 1)")
                            }
                        }
                        .padding(16)
                    }
                }
                Section(header: Text("Drinks")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: columns, spacing: 16) {
                            ForEach(0..<5) { index in
                                GridItemView(imageName: "photo", title: "Item \(index + 1)")
                            }
                        }
                        .padding(16)
                    }
                }
                Section(header: Text("Desert")) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: columns, spacing: 16) {
                            ForEach(0..<5) { index in
                                GridItemView(imageName: "photo", title: "Item \(index + 1)")
                            }
                        }
                        .padding(16)
                    }
                }
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    MenuItemsView()
}
