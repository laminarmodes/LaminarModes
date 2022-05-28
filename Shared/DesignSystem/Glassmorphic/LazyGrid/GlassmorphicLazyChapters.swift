//
//  GlassmorphicLazyChapters.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicLazyChapters: View {
    
    var chapter: Chapter?
    
    var body: some View {
        HStack
        {
            VStack(alignment: .leading, spacing: 12.0)
            {
//                Image(systemName: chapter?.icon ?? "person.fill")
//                    .foregroundColor(chapter?.color ?? Color.gray)
                
                HStack {
                    Image(chapter?.icon ?? "Vector")
                    
                    Text(chapter?.role ?? "No data")
                        .font(Font.caption.smallCaps())
                        .fontWeight(.bold)
                        .foregroundColor(chapter?.color ?? Color.gray)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
                
                Text(chapter?.description ?? "No data")
                    .font(Font.callout)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("dark-text"))
                    .lineLimit(2)
                
                Spacer()
            }
            Spacer()
        }
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(.systemBackground).opacity(1), Color(.systemBackground).opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                    .cornerRadius(20)
                    .blendMode(.softLight)
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.linearGradient(colors: [.white.opacity(0.8), .black.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
        .frame(height: 150)
        .accentColor(.primary.opacity(0.7))
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct GlassmorphicLazyChapters_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicLazyChapters()
            .previewLayout(.sizeThatFits)
    }
}
