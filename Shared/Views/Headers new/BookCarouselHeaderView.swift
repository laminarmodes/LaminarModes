//
//  RowHeaderView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 17/6/21.
//

import SwiftUI

struct BookCarouselHeaderView: View
{
    @State var bookName: String?
    @State var numberOfStories: Int?
    
    var body: some View
    {
        HStack
        {
            Text(bookName ?? "No book name")
                .font(Font.custom("noteworthy", size: 24))
                .fontWeight(.semibold)
                .padding(.leading, 20)
                .padding(.vertical, -10)
                //.foregroundColor(Color.primary.opacity(0.7))
                .foregroundColor(Color.black.opacity(0.5))
                .lineLimit(1)
            Image(systemName: "fork.knife")
                .resizable()
                .frame(width: 15.0, height: 16.0)
                .foregroundColor(Color.black.opacity(0.5))
            Text(String(numberOfStories ?? 0) )
                .foregroundColor(Color.black.opacity(0.5))
        }
    }
}

struct BookCarouselHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BookCarouselHeaderView()
    }
}
