//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Trung Luu on 5/14/25.
//
import SwiftUI

struct MenuItemDetailsView: View {
    //TODO: Add MenuItem

    var body: some View {
        VStack(spacing: 16) {
            // large logo or image placeholder
            Image("LittleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(
            
        )
    }
}
