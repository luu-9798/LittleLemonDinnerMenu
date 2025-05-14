//
//  MenuItemView.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//

import SwiftUI

struct MenuItemsView: View {
    //TODO: Add ViewModel
    //@StateObject private var vm = MenuViewViewModel()
    @State private var showingOptions = false

    // adaptive 3-column grid
    private let columns = [ GridItem(.adaptive(minimum: 100), spacing: 16) ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // — Food Section —
                    Text("Food")
                        .font(.title2).bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 16) {
                        //TODO: Add MenuItem
                    }
                    .padding(.horizontal)

                    // — Drinks Section —
                    Text("Drinks")
                        .font(.title2).bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 16) {
                        //TODO: Add MenuItem
                    }
                    .padding(.horizontal)

                    // — Dessert Section —
                    Text("Dessert")
                        .font(.title2).bold()
                        .padding(.horizontal)
                    LazyVGrid(columns: columns, spacing: 16) {
                        //TODO: Add MenuItem
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical)
            }
            .navigationTitle("Menu")
            .toolbar {
                // Task 2 nav‐bar button
                Button { showingOptions.toggle() } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .sheet(isPresented: $showingOptions) {}
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
