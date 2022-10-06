//
//  ThemeCardMini.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/6/21.
//

import SwiftUI

struct BookCardSmallHeightInfiniteWidthView: View
{
    var book: Flavour?
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack {
                Rectangle()
                    .fill(Color.white.opacity(0.9))
                    .frame(width: 25, height: 25)
                    .mask(
                        Image(book?.image ?? "ico_blueberry")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, alignment: .leading)
                    )

                Text(book?.name ?? "Book 1")
                    .textStyle(font: Font.headline.bold())
            }
            
            Text(book?.description ?? "No Data" )
                .textStyle(font: .subheadline)
            
            Spacer()
        } // HStack
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .cardStyle(backgroundColor: book?.color ?? Color.gray)
    }
}

struct BookCardSmallHeightInfiniteWidthView_Previews: PreviewProvider {
    static var previews: some View {
        BookCardSmallHeightInfiniteWidthView()
            .previewLayout(.sizeThatFits)
    }
}
