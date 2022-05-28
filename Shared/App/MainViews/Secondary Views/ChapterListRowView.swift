//
//  StoryItem.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct ChapterListRowView: View {
    
    @EnvironmentObject private var reference: Reference
    var chapterID: UUID
    
    // Temporafily injecting iStory this but can remove because now using reference and id
    var chapter: Chapter?
    var columnWidth: CGFloat = 100
    var body: some View {
        
        HStack {
//            Image(systemName: "person.fill")
            Image(chapter?.icon ?? "Vector")
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.white)
                .padding()
                .frame(width: 80, height: 80, alignment: .center)
            
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(reference.findChapterById(storyIdToRead: chapterID).color ?? Color.gray)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 5) {
                
                Text(reference.findChapterById(storyIdToRead: chapterID).role )
                    .font(.title2)
                    .fontWeight(.bold)
                Text(reference.findChapterById(storyIdToRead: chapterID).description )
                    .font(.title3)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

struct ChapterListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterListRowView(chapterID: Reference().libraries[0].books[0].chapters[0].uniqueID)
            .previewLayout(.sizeThatFits)
            .environmentObject(Reference())
    }
}


