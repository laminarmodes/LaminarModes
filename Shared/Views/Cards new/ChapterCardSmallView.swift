//
//  StoryCardItem.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct ChapterCardSmallView: View
{
    var story: Chapter?
    
    var body: some View
    {
        HStack
        {
            VStack(alignment: .leading, spacing: 12.0)
            {
                Image(systemName: story?.icon ?? "person.fill")
                    .foregroundColor(Color.white.opacity(0.9))
                
                Text(story?.role ?? "No data")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white.opacity(0.9))
                    .lineLimit(1)
                
                Text(story?.description ?? "No data")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    .lineLimit(2)
                
                Spacer()
            }
            Spacer()
        }
        .padding([.top, .leading], 16)
        .frame(width: 150, height: 150)
        .background(story?.color ?? Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct ChapaterCardSmallView_Previews: PreviewProvider
{
    static var previews: some View {
        ChapterCardSmallView()
            .previewLayout(.sizeThatFits)
    }
}

