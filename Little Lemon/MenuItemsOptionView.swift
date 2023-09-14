//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @State var isPresented: Bool = false
    @Environment (\.presentationMode) var presentationMode
    
    enum SELECTED_CATEGORIES: String, CaseIterable {
        case food = "Food"
        case drink = "Drink"
        case desert = "Desert"
    }
    enum Sort_By: String, CaseIterable {
        case popularity = "Most Popular"
        case price = "Price $-$$$"
        case alphabetically = "A-Z"
    }

    var body: some View {
            NavigationStack{
                CustomNavigationViewTitle(text: "Filter").bold()
                List{
                    Section(header: Text("SELECTED CATEGORIES")){
                        ForEach(SELECTED_CATEGORIES.allCases, id: \.self){
                            category in Text(category.rawValue)
                        }
                    }
                    Section(header: Text("Sort By")){
                        ForEach(Sort_By.allCases, id: \.self){
                            sort in Text(sort.rawValue)
                        }
                    }
                }
                .toolbar {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Done")
                    }
                }
            }
    }
}
struct CustomNavigationViewTitle: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.scrollEdgeAppearance?.titleTextAttributes = [.foregroundColor: UIColor.clear]
                nc.navigationBar.scrollEdgeAppearance?.backgroundColor = .clear
            })
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}


#Preview {
    MenuItemsOptionView()
}
