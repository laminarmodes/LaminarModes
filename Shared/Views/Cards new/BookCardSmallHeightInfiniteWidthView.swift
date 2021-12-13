//
//  ThemeCardMini.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/6/21.
//

import SwiftUI

struct BookCardSmallHeightInfiniteWidthView: View
{
    
    var theme: Book?
    
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
                
                Text(theme?.name ?? "Checking Account (SGD)")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
            }
            
            Text("Description: \(theme?.description ?? "No Data")" )
                .font(.subheadline)
                .foregroundColor(Color.white.opacity(0.9))
            
            Spacer()
        } // HStack
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(theme?.color ?? Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct BookCardSmallHeightInfiniteWidthView_Previews: PreviewProvider {
    static var previews: some View {
        BookCardSmallHeightInfiniteWidthView()
            .previewLayout(.sizeThatFits)
    }
}