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
            Text(item.title)
                .font(.largeTitle).bold()
            
            Image("LittleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 400)

            VStack(alignment: .center, spacing: 8) {
                Text("Price:").bold()
                Text("\(item.price, specifier: "%.2f")")
                Text("Ordered:").bold()
                Text("\(item.ordersCount)")
                Text("Ingredients:").bold()
                ForEach(item.ingredients, id: \.self) { ing in
                    Text("\(ing.rawValue)")
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
