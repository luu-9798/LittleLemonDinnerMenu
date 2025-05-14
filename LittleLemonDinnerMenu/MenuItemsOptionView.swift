//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import SwiftUI

struct MenuItemsOptionView: View {
    @State private var selectedCategories: Set<MenuCategory> = [.food, .drink, .dessert]
    @State private var selectedSort: SortOption = .mostPopular

    enum SortOption: String, CaseIterable {
        case mostPopular = "Most Popular"
        case price       = "Price $-$$$"
        case alphabet    = "A–Z"
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { cat in
                        Toggle(cat.rawValue,
                               isOn: Binding(
                                   get: { selectedCategories.contains(cat) },
                                   set: { isOn in
                                       if isOn { selectedCategories.insert(cat) }
                                       else     { selectedCategories.remove(cat) }
                                   }
                               ))
                    }
                }

                Section(header: Text("SORT BY")) {
                    ForEach(SortOption.allCases, id: \.self) { opt in
                        HStack {
                            Text(opt.rawValue)
                            Spacer()
                            if opt == selectedSort {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture { selectedSort = opt }
                    }
                }
            }
            .navigationTitle("Filter")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { /* dismiss by sheet binding */ }
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
