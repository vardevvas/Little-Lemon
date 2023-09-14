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
                .frame(width: 80, height: 80)
                .padding(5)
                .background(Color.black)
            
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

    var body: some View {
            NavigationStack {
                ScrollView{
                    VStack(alignment: .leading){
                        Section(header: Text("Food").font(.title)) {
                                LazyVGrid(columns: columns, spacing: 16) {
                                    ForEach(0..<12) { index in
                                        GridItemView(imageName: "photo", title: "Item \(index + 1)")
                                    }
                                }
                            
                        }
                        Section(header: Text("Drinks").font(.title)) {
                                LazyVGrid(columns: columns, spacing: 16) {
                                    ForEach(0..<8) { index in
                                        GridItemView(imageName: "photo", title: "Item \(index + 1)")
                                    }
                                }
                        }
                        Section(header: Text("Desert").font(.title)) {
                                LazyVGrid(columns: columns, spacing: 16) {
                                    ForEach(0..<4) { index in
                                        GridItemView(imageName: "photo", title: "Item \(index + 1)")
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

#Preview {
    MenuItemsView()
}
