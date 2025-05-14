//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import SwiftUI

struct MenuItemsOptionView: View {
    //TODO: Add Menu Item Category
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
                    //TODO: Add Menu Item Category
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

