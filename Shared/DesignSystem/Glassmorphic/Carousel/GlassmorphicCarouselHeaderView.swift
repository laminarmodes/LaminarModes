//
//  GlassmorphicCarouselHeaderView.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicCarouselHeaderView: View
{
    @State var bookName: String?
    @State var numberOfStories: Int?
    
    var body: some View
    {
        HStack
        {
            Text(bookName ?? "No book name")
                .font(Font.custom("noteworthy", size: 28))
                .fontWeight(.semibold)
                .padding(.leading, 20)
                .padding(.vertical, -10)
                //.foregroundColor(Color.primary.opacity(0.7))
                .foregroundColor(Color.white.opacity(0.8))
                .lineLimit(1)
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 15.0, height: 16.0)
                .foregroundColor(Color.white.opacity(0.8))
            Text(String(numberOfStories ?? 0) )
                .foregroundColor(Color.white.opacity(0.8))
        }
    }
}

struct GlassmorphicCarouselHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicCarouselHeaderView()
    }
}
