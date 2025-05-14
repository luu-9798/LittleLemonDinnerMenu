//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem

    var body: some View {
        VStack(spacing: 16) {
            // large logo or image placeholder
            Image("LittleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            Text(item.title)
                .font(.largeTitle).bold()

            VStack(alignment: .leading, spacing: 8) {
                Text("Price: \(item.price, specifier: "%.2f")")
                Text("Ordered: \(item.ordersCount)")
                Text("Ingredients:")
                ForEach(item.ingredients, id: \.self) { ing in
                    Text("• \(ing.rawValue)")
                }
            }
            .font(.body)
            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(
            item: MenuItem(
                title: "Food 5",
                price: 10.99,
                category: .food,
                ordersCount: 1000,
                ingredients: [.spinach, .broccoli, .carrot, .pasta]
            )
        )
    }
}
