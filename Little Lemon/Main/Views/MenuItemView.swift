//
//  MenuItemView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 23/09/2023.
//

import SwiftUI

struct MenuItemView: View {
    @Binding var menuItem: MenuItem
    var body: some View {
        VStack {
            Color.black
            Text(menuItem.title)
        }
    }
}
