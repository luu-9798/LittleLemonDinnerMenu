//
//  MenuItemsCell.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import SwiftUI

struct MenuItemCell: View {
    let item: MenuItem

    var body: some View {
        VStack {
            // placeholder image box
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 80)
                .cornerRadius(8)

            Text(item.title)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
    }
}
