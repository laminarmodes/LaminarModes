//
//  BookCardLargeViewNeumorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct BookCardLargeViewNeumorphic: View
{

    var book: Flavour?
    @EnvironmentObject private var reference: Reference

    var body: some View {
        HStack(spacing: 10)
        {
            VStack {
                
//                Image(systemName: book?.image ?? "person.fill")
//                    .resizable()
//                    .frame(width: 50, height: 50, alignment: .leading)
//                    .foregroundColor(book?.color ?? Color.gray)
                
                Rectangle()
                    .fill(book?.color ?? Color.gray)
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
                Text(book?.name ?? "Book 1")
                    .font(Font.headline.bold())
                    .foregroundColor(book?.color ?? Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Description: \(book?.description ?? "No Data")" )
                    .font(.subheadline)
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Number of collections: \(book?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
                Text("Number of items: \(book?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
            }

        } // HStack
        .padding()
        .frame(height: 220, alignment: .leading)
        .frame(maxWidth: 600, alignment: .leading)
        .background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct BookCardLargeViewNeumorphic_Previews: PreviewProvider {
    static var previews: some View {
        BookCardLargeViewNeumorphic()
            .previewLayout(.sizeThatFits)
    }
}
