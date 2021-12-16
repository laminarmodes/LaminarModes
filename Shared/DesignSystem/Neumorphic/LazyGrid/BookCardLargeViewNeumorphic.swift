//
//  BookCardLargeViewNeumorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct BookCardLargeViewNeumorphic: View
{

    var book: Book?
    @EnvironmentObject private var reference: Reference

    var body: some View {
        HStack
        {
            VStack {
                Image(systemName: book?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .foregroundColor(book?.color ?? Color.gray)
                Spacer()
            }
            .padding()

            VStack(alignment: .leading)
            {
                Text(book?.name ?? "Book 1")
                    .font(Font.headline.bold())
                    .foregroundColor(book?.color ?? Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Description: \(book?.description ?? "No Data")" )
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Number of chapters: \(book?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color.secondary)
                    .multilineTextAlignment(.leading)
                Text("Number of stories: \(book?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .multilineTextAlignment(.leading)
            }
            .padding()
        } // HStack
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
