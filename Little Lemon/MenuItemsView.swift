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
                .frame(width: 50, height: 50)
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
    @State private var isFilterViewPresented = false

    
    let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]

    var body: some View {
        
        VStack{
                Button(action: {
                    isFilterViewPresented.toggle()
                }) {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                }
                .sheet(isPresented: $isFilterViewPresented) {
                    MenuItemsOptionView(isPresented: isFilterViewPresented)
                }
                .background(.red)
                .offset(x: 100, y: 100)
            NavigationView{
                
                List{
                        
                    Section(header: Text("Food")) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(0..<12) { index in
                                    GridItemView(imageName: "photo", title: "Item \(index + 1)")
                                }
                            }
                            .padding(16)
                        }
                    }
                    Section(header: Text("Drinks")) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(0..<8) { index in
                                    GridItemView(imageName: "photo", title: "Item \(index + 1)")
                                }
                            }
                            .padding(16)
                        }
                    }
                    Section(header: Text("Desert")) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: columns, spacing: 16) {
                                ForEach(0..<4) { index in
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
}

#Preview {
    MenuItemsView()
}
