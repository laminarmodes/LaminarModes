//
//  LazyThemes.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI

struct LazyThemes: View
{
    @EnvironmentObject private var reference: Reference
    @State var projectID: Int
    
    var body: some View
    {
        var columns: [GridItem] =
            Array(repeating: .init(.flexible()), count: 2)
        
        ZStack {
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
            {
                VStack // Stack of account cards
                {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                    {
                        ForEach(reference.themes.reversed(), id: \.id) { item in
                            
                            NavigationLink( destination: UserStoryList(projectID: projectID, theme: item, themeId: item.id).environmentObject(reference))
                            {
                                HStack
                                {
                                    ThemeCardMini(theme: item)
                                        .padding(4)
                                        .environmentObject(reference)
                                }
                            }
                        } // ForEach
                    }
                    .padding()
                } // VStack
            } // SCrollView
        }
        .zIndex(1) // bottom of transactionsView
    }
}

struct LazyThemes_Previews: PreviewProvider {
    static var previews: some View {
        LazyThemes(projectID: 1)
    }
}
