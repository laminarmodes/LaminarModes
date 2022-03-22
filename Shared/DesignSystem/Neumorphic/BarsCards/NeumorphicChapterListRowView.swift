//
//  NeumorphicChapterListRowView.swift
//  LaminarModes
//
//  Created by Anya Traille on 16/12/21.
//

import SwiftUI

struct NeumorphicChapterListRowView: View {
    
    @EnvironmentObject private var reference: Reference
    var chapterID: UUID
    
    // Temporafily injecting iStory this but can remove because now using reference and id
    var chapter: Chapter?
    var columnWidth: CGFloat = 100
    var body: some View {
        
        HStack {
            Image(systemName: "person.fill")
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
                    .foregroundColor(Color("dark-text"))
                Text(reference.findChapterById(storyIdToRead: chapterID).description )
                    .font(.title3)
                    .foregroundColor(Color("dark-text"))
            }
        }
        //.frame(height: 220, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct NeumorphicChapterListRowView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicChapterListRowView(chapterID: Reference().libraries[0].books[0].chapters[0].uniqueID)
            .previewLayout(.sizeThatFits)
            .environmentObject(Reference())
    }
}
