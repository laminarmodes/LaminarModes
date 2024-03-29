//
//  BookCardSmallHeightInfiinteWidthView_Neumorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct NeumorphicLazyCard: View
{
    
    var book: Flavour?
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        VStack(alignment: .leading)
        {
            HStack {
                
                
                
//                Image(systemName: book?.image ?? "person.fill")
//                    .resizable()
//                    .frame(width: 25, height: 25, alignment: .leading)
//                    .foregroundColor(book?.color ?? Color.gray)
                
                Rectangle()
                    .fill(book?.color ?? Color.gray)
                    .frame(width: 25, height: 25)
                    .mask(

                        Image(book?.image ?? "ico_blueberry")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, alignment: .leading)
                    )
                
                Text(book?.name ?? "Book 1")
                    .font(Font.headline.bold())
                    .foregroundColor(book?.color ?? Color.blue)
                    .multilineTextAlignment(.leading)
            }
            
            Text("\(book?.description ?? "No Data")" )
                .font(.subheadline)
                .foregroundColor(Color("dark-text"))
                .multilineTextAlignment(.leading)
            
            Spacer()
        } // HStack
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .neuCardStyle()
//        .background(Color("off-white"))
//        .clipShape(RoundedRectangle(cornerRadius: 22))
//        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct NeumorphicLazyCard_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicLazyCard()
            .previewLayout(.sizeThatFits)
    }
}
