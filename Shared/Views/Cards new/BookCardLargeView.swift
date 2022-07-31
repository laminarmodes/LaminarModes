//
//  ThemeCard.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct BookCardLargeView: View
{
    
    var book: Flavour?
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        HStack(spacing: 10)
        {
            VStack {

                
                
                Rectangle()
                    .fill(Color.white.opacity(0.9))
                    .frame(width: 70, height: 70)
                    .mask(

                        Image(book?.image ?? "ico_blueberry")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, alignment: .leading)
                    )
                    
                
 
                
                Spacer()
            }

            
            VStack(alignment: .leading)
            {
                Text(book?.name ?? "Book One")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text(book?.description ?? "No Data" )
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Number of collections: \(book?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                Text("Number of items: \(book?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
            }

        } // HStack
        .padding()
        .frame(height: 220, alignment: .leading)
        .frame(maxWidth: 600, alignment: .leading)
        .background(book?.color ?? Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        //        .shadow(color: book?.color ?? Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
        
    }
}

struct BookCardLargeView_Previews: PreviewProvider {
    static var previews: some View {
        BookCardLargeView()
            .previewLayout(.sizeThatFits)
    }
}


//                Image(systemName: book?.image ?? "person.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50, alignment: .leading)
//                    .foregroundColor(Color.white.opacity(0.9))




//                    Image(book?.image ?? "ico_blueberry")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 50, alignment: .leading)


