//
//  GlassmorphicLazyCard.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicLazyCard: View
{
    
    var book: Book?
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack {
                Image(systemName: book?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .leading)
                    .foregroundColor(book?.color ?? Color.gray)
                
                Text(book?.name ?? "Book 1")
                    .font(Font.headline.bold())
                    .foregroundColor(book?.color ?? Color.blue)
                    .multilineTextAlignment(.leading)
            }
            
            Text("Description: \(book?.description ?? "No Data")" )
                .font(.subheadline)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
            
            Spacer()
        } // HStack
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

struct GlassmorphicLazyCard_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicLazyCard()
            .previewLayout(.sizeThatFits)
    }
}
