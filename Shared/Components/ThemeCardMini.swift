//
//  ThemeCardMini.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/6/21.
//

import SwiftUI

struct ThemeCardMini: View
{
    
    var theme: iTheme?
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack {
                Image(systemName: theme?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
                //Spacer()
                Text(theme?.name ?? "Checking Account (SGD)")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(theme?.color ?? Color.gray)
            }
            //.padding()

            Text("Description: \(theme?.description ?? "No Data")" )
                .font(.subheadline)
                .foregroundColor(Color.white.opacity(0.9))
                .multilineTextAlignment(.leading)
                //.foregroundColor(Color("gray-text"))
            
            VStack(alignment: .leading)
            {
                
//                    .foregroundColor(Color.white.opacity(0.9))
//                Spacer()

//                Text("Number of items: \(theme?.numberOfStories ?? 0)")
//                    .font(.caption)
//                    .foregroundColor(Color.white.opacity(0.9))
            }
            
            Spacer()
            //.padding()
        } // HStack
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(theme?.color ?? Color.gray)
        //.background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 22))
        //.shadow(color: theme?.color?.opacity(0.3) ?? Color.gray.opacity(0.3), radius: 10, x: 0, y: 10)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct ThemeCardMini_Previews: PreviewProvider {
    static var previews: some View {
        ThemeCardMini()
            .previewLayout(.sizeThatFits)
    }
}
