//
//  GradientText.swift
//  UserStoryMap
//
//  Created by Anya Traille on 15/6/21.
//

import SwiftUI

struct GradientText: View
{
    var text: String
    
    var body: some View
    {
        Text(text)
    }
}

extension View {
    
    public func gradientForeground(colors: [Color]) -> some View
    {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .mask(self)
    }
}
