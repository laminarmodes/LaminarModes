//
//  ColorThemeView.swift
//  LaminarModes (iOS)
//
//  Created by Anya Traille on 27/5/22.
//

import SwiftUI

struct ColorThemeView: View {
    
    var themeName: String?
    var totalColors: Int?
    var themeBackground: Color?
    
    var body: some View {
        
        HStack
        {
                Text(themeName ?? "No data")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white.opacity(0.9))

        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(themeBackground)
        .foregroundColor(.white)
        .mask(RoundedRectangle(cornerRadius: 8))
        .shadow(color: themeBackground ?? Color.gray.opacity(0.5) , radius: 20, x: 0, y: 10)
        
    }
}

struct ColorThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ColorThemeView(themeName: "Test", totalColors: 5, themeBackground: Color.purple)
    }
}
