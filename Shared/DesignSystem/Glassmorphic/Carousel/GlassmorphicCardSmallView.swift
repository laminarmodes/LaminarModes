//
//  GlassmorphicCardSmallView.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicCardSmallView: View
{
    var chapter: Chapter?
    
    var body: some View
    {
        HStack
        {
            VStack(alignment: .leading, spacing: 12.0)
            {
                Image(systemName: chapter?.icon ?? "person.fill")
                    .foregroundColor(chapter?.color ?? Color.gray)
                
                Text(chapter?.role ?? "No data")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(chapter?.color ?? Color.gray)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                
                
                Text(chapter?.description ?? "No data")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("dark-text"))
                    .lineLimit(2)
                
                Spacer()
            }
            Spacer()
        }
        .padding([.top, .leading], 16)
        .frame(width: 150, height: 150)
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
        //.padding(.top, 16)
    }
}

struct GlassmorphicCardSmallView_Previews: PreviewProvider
{
    static var previews: some View {
        GlassmorphicCardSmallView()
            .previewLayout(.sizeThatFits)
    }
}
