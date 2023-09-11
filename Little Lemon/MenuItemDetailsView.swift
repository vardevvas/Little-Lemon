//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var body: some View {
        Text("Food 5")
        VStack {
            Image("Little Lemon logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(8)
            
            Text("title")
                .font(.headline)
            Text("ordered")
                .font(.headline)
            Text("ingredient")
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
//        .background(Color.blue)
        .cornerRadius(8)

    }
}

#Preview {
    MenuItemDetailsView()
}
