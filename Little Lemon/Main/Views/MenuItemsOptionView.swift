//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Ali AwadAlkarim on 11/09/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.dismiss) var dismiss
    var menuCategories: [MenuCategory] = [.food, .drink, .desert]
    var sortOptions = ["Most Popular", "Price $-$$$", "A-Z",]
    var menuCategoriesView: some View {
        Section {
            ForEach(menuCategories, id: \.self) { menuCategory in
                Text(menuCategory.rawValue.capitalized)
            }
        } header: {
            HStack(alignment: .top) {
                Text("Selected Categories")
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
            }
        }
    }
    var sortOptionsView: some View {
        Section {
            ForEach(sortOptions, id: \.self) { sortOption in
                Text(sortOption)
            }
        } header: {
            HStack(alignment: .top) {
                Text("Sort By")
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
            }
        }
    }

    var body: some View {
        NavigationView{
                List{
                    menuCategoriesView
                    sortOptionsView
                }
                .navigationTitle("Filter")
                .listStyle(GroupedListStyle())
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Done")
                                .bold()
                        }
                    }
                }
            }
    }
}
//struct CustomNavigationViewTitle: View {
//    var text: String
//    
//    var body: some View {
//        Text(text)
//            .font(.largeTitle)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.horizontal)
//            .background(NavigationConfigurator { nc in
//                nc.navigationBar.scrollEdgeAppearance?.titleTextAttributes = [.foregroundColor: UIColor.clear]
//                nc.navigationBar.scrollEdgeAppearance?.backgroundColor = .clear
//            })
//    }
//}
//
//struct NavigationConfigurator: UIViewControllerRepresentable {
//    var configure: (UINavigationController) -> Void = { _ in }
//    
//    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
//        UIViewController()
//    }
//    
//    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
//        if let nc = uiViewController.navigationController {
//            self.configure(nc)
//        }
//    }
//}


#Preview {
    MenuItemsOptionView()
}
