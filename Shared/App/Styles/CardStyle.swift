//
//  SwiftUIView.swift
//  LaminarModes (iOS)
//
//  Created by Anya Traille on 21/9/22.
//

import SwiftUI

struct CardStyle: ViewModifier {
    var backgroundColor: Color
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        
        var isLightMode = colorScheme == .light
        
        content
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct TextStyle: ViewModifier {
    var font: Font
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(Color.white.opacity(0.9))
            .multilineTextAlignment(.leading)
    }
}

struct NeumorphCardStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("off-white"))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            
    }
}



extension View {
    
    func cardStyle(backgroundColor: Color) -> some View {
        modifier(CardStyle(backgroundColor: backgroundColor))
    }
    
    func textStyle(font: Font) -> some View {
        modifier(TextStyle(font: font))
    }
    
    func neuCardStyle() -> some View {
        modifier(NeumorphCardStyle())
    }
}

