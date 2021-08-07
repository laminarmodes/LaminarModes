//
//  ThemeHeader.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/6/21.
//

import SwiftUI

struct ThemeHeader: View
{
    
    var theme: iTheme?
    
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
                    .lineLimit(6)
                Spacer()
                Text("Number of items: \(theme?.numberOfStories ?? 0)")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.9))
            }
            //.padding()
        } // HStack
        .padding()
        .frame(height: 250, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(theme?.color ?? Color.gray)
    }
}

struct ThemeHeader_Previews: PreviewProvider {
    static var previews: some View {
        ThemeHeader()
            .previewLayout(.sizeThatFits)
    }
}
