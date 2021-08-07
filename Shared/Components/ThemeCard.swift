//
//  ThemeCard.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct ThemeCard: View
{
    
    var theme: iTheme?
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        HStack
        {
            VStack {
                Image(systemName: theme?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
                Spacer()
            }
            .padding()

            VStack(alignment: .leading)
            {
                Text(theme?.name ?? "Checking Account (SGD)")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
                Spacer()
                Text("Description: \(theme?.description ?? "No Data")" )
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(Color("gray-text"))
                Spacer()
                Text("Number of users: \(theme?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
                Text("Number of stories: \(theme?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
            }
            .padding()
        } // HStack
        .frame(height: 220, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(theme?.color ?? Color.gray)
        //.background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 22))
        //.shadow(color: theme?.color?.opacity(0.3) ?? Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct ThemeCard_Previews: PreviewProvider {
    static var previews: some View {
        ThemeCard()
            .previewLayout(.sizeThatFits)
    }
}


