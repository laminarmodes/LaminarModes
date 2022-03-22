//
//  BookCardLargeViewGlassmorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct BookCardLargeViewGlassmorphic: View
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
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Number of chapters: \(book?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
                Text("Number of stories: \(book?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color("dark-text"))
                    .multilineTextAlignment(.leading)
            }
            .padding()
        } // HStack
        .frame(height: 220, alignment: .leading)
        .frame(maxWidth: 600, alignment: .leading)
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
        .frame(height: 220)
        .accentColor(.primary.opacity(0.7))
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct BookCardLargeViewGlassmorphic_Previews: PreviewProvider {
    static var previews: some View {
        BookCardLargeViewGlassmorphic()
            .previewLayout(.sizeThatFits)
    }
}
