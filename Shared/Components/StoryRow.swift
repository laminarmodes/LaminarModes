//
//  StoryItem.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct StoryRow: View {
    
    // Temporafily injecting this but can remove because now using reference and id
    var story: iStory?
    
    @EnvironmentObject private var reference: Reference
    var storyId: Int
    
    var columnWidth: CGFloat = 100
    
    var body: some View {
        
        HStack {
            Image(systemName: "person.fill")
                //.renderingMode(.original)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.white)
                .padding()
                .frame(width: 80, height: 80, alignment: .center)
                
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                
//                .background(story?.color ?? Color.gray)
                .background(reference.readStory(storyIdToRead: storyId).color ?? Color.gray)
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 5) {
//                Text(story?.role ?? "No data")
                Text(reference.readStory(storyIdToRead: storyId).role )
                    .font(.title2)
                    .fontWeight(.bold)
//                Text(story?.description ?? "No data")
                Text(reference.readStory(storyIdToRead: storyId).description )
                    .font(.title3)
                    .foregroundColor(Color.secondary)
                    
            }
                
        }
        
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryRow(storyId: Reference().projects[0].themes[0].stories[0].id)
            .previewLayout(.sizeThatFits)
            .environmentObject(Reference())
    }
}


