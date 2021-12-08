//
//  RowHeaderView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 17/6/21.
//

import SwiftUI

struct BookCarouselHeaderView: View
{
    @State var themeName: String?
    @State var numberOfStories: Int?
    
    var body: some View
    {
        HStack
        {
            Text(themeName ?? "No book name")
                .font(Font.custom("noteworthy", size: 28))
                .fontWeight(.semibold)
                .padding(.leading, 20)
                //.foregroundColor(Color.primary.opacity(0.7))
                .foregroundColor(Color.gray)
                .lineLimit(1)
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 15.0, height: 16.0)
                .foregroundColor(Color.gray)
            Text(String(numberOfStories ?? 0) )
                .foregroundColor(Color.gray)
        }
    }
}

struct BookCarouselHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BookCarouselHeaderView()
    }
}
