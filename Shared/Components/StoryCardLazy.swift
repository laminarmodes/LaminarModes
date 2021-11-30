//
//  StoryLazy.swift.swift
//  LaminarModes
//
//  Created by Anya Traille on 30/11/21.
//

import SwiftUI

struct StoryCardLazy: View {
    var story: iStory?
    
    var body: some View {
        HStack
        {
            VStack(alignment: .leading, spacing: 12.0)
            {
                Image(systemName: story?.icon ?? "person.fill")
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(story?.color ?? Color.gray)
                
                Text(story?.role ?? "No data")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(story?.color ?? Color.gray)
                    .lineLimit(1)
                
                Text(story?.description ?? "No data")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white.opacity(0.9))
                    //.foregroundColor(story?.color ?? Color.gray)
                    .lineLimit(2)
                
                Spacer()
                
            }
            Spacer()
        }
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(story?.color ?? Color.gray)
        //.background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        //.padding(.top, 18)
    }
    
}

struct StoryLazy_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardLazy()
            .previewLayout(.sizeThatFits)
    }
}
