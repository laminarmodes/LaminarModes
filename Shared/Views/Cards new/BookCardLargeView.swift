//
//  ThemeCard.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct BookCardLargeView: View
{
    
    var theme: Book?
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        HStack
        {
            VStack {
                Image(systemName: theme?.image ?? "person.fill")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .foregroundColor(Color.white.opacity(0.9))
                Spacer()
            }
            .padding()
            
            VStack(alignment: .leading)
            {
                Text(theme?.name ?? "Checking Account (SGD)")
                    .font(Font.headline.bold())
                    .foregroundColor(Color.white.opacity(0.9))
                Spacer()
                Text("Description: \(theme?.description ?? "No Data")" )
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                Spacer()
                Text("Number of users: \(theme?.numberOfUsers ?? 0)")
                    .font(.footnote)
                    .foregroundColor(Color.white.opacity(0.9))
                Text("Number of stories: \(theme?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.9))
            }
            .padding()
        } // HStack
        .frame(height: 220, alignment: .leading)
        .frame(maxWidth: 600, alignment: .leading)
        .background(theme?.color ?? Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
    }
}

struct BookCardLargeView_Previews: PreviewProvider {
    static var previews: some View {
        BookCardLargeView()
            .previewLayout(.sizeThatFits)
    }
}


