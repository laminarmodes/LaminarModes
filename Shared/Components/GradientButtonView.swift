//
//  GradientButtonView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 15/6/21.
//

import SwiftUI

struct GradientButtonView: View {
    
    @State private var angle = 0.0
    
    var gradient1: [Color] = [
        
        Color(hue: 351/360, saturation: 0.60, brightness: 0.80),
        Color(hue: 351/360, saturation: 0.60, brightness: 0.9),
        Color(hue: 351/360, saturation: 0.60, brightness: 0.80),
        Color(hue: 351/360, saturation: 0.60, brightness: 0.9)
        
    ]
    
    var buttonTitle: String
    
    var body: some View
    {
        
        GeometryReader() { geometry in
            ZStack {
                
                AngularGradient(gradient: Gradient(colors: gradient1), center: .center, angle: .degrees(angle)) // AngularGradient
                    .blendMode(.overlay)
                    .blur(radius: 8.0)
                    .mask(
                        RoundedRectangle(cornerRadius: 16)
                            .frame(height: 50)
                            .frame(maxWidth: geometry.size.width - 16)
                    ) // mask
                    .onAppear()
                {
                    withAnimation(.linear(duration: 7))
                    {
                        self.angle += 350
                    }
                }
                
                GradientText(text: buttonTitle)
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .frame(width: geometry.size.width - 16)
                    .frame(height: 50)
                    .background(Color("tertiaryBackground").opacity(0.9))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16.0)
                            .stroke(Color.white, lineWidth: 1.9)
                            .blendMode(.normal)
                            .opacity(0.7)
                            .shadow(radius: 5.0)
                    ) // RoundedRectangle
                    .cornerRadius(16)
            } // ZStack
        } // GeometryReader
        .frame(height: 50)   
    }
}

struct GradientButtonView_Previews: PreviewProvider {
    static var previews: some View {
        GradientButtonView(buttonTitle: "Button title")
    }
}
