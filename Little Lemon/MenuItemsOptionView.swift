//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @State var isPresented: Bool = false
    @State private var selectedOption: String = "All"

    var body: some View {
        VStack{
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
                    Button("Apply Filters") {
                        // Implement filter logic here
                        // You can access the selectedOption and other filter controls
                        // and apply your filtering to your main content
                        isPresented = false // Close the filter view
                    }
                    .padding()
                    
                    Button("Clear Filters") {
                        // Implement logic to clear filters
                        // Reset filter options to their initial state
                        selectedOption = "All"
                        // You can add more code to clear other filter controls
                    }
                    .foregroundColor(.red)
                    .padding()

                }.navigationTitle("Filter")
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()

    }
}

#Preview {
    MenuItemsOptionView()
}
