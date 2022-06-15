//
//  ThemeHeader.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/6/21.
//

import SwiftUI

struct BookHeaderLarge: View
{
    
    var book: Flavour?
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        HStack
        {
            VStack {
                Image(systemName: book?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                Spacer()
            }
            .padding()

            VStack(alignment: .leading)
            {
                Text(book?.name ?? "Checking Account (SGD)")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
                Spacer()
                Text("Description: \(book?.description ?? "No Data")" )
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                    .lineLimit(6)
                Spacer()
                Text("Number of items: \(book?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.9))
            }
        } // HStack
        .padding()
        .frame(height: 250, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(book?.color ?? Color.gray)
//        .shadow(color: book?.color ?? Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct BookHeaderLarge_Previews: PreviewProvider {
    static var previews: some View {
        BookHeaderLarge()
            .previewLayout(.sizeThatFits)
    }
}
