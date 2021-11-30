//
//  ThemeTabView.swift
//  LaminarModes
//
//  Created by Anya Traille on 30/11/21.
//

import SwiftUI

struct ThemeLazyStories: View {
    
    //var theme: iTheme?
    
    @State var projectID: Int
    var themeId: Int
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        //TabView {
            //ForEach(reference.themes.reversed(), id: \.id) { theme in
                
                VStack {
                    ThemeCard(theme: reference.readTheme(inputThemeId: themeId))
                        .padding([.top], 8)
                        .padding([.leading, .trailing], 16)
                    .environmentObject(reference)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                    {
                        ForEach(reference.readTheme(inputThemeId: themeId).stories.reversed(), id: \.id) { story in
                            
                            NavigationLink( destination: DetailsView(story: story, closeButton: true, themeId: reference.readTheme(inputThemeId: themeId).id).environmentObject(reference))
                            {
                                HStack
                                {
                                    StoryCardLazy(story: story)
                                        .padding(4)
                                        .environmentObject(reference)
                                }
                            }
                        } // ForEach
                    }
                    .padding()
                } //: VStack
                
            //}
        //}
    }
}

struct ThemeTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeLazyStories(projectID: 1, themeId: 1).environmentObject(Reference())
    }
}


//LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
//{
//    ForEach(reference.themes.reversed(), id: \.id) { item in
//
//        NavigationLink( destination: UserStoryList(projectID: projectID, theme: item, themeId: item.id).environmentObject(reference))
//        {
//            HStack
//            {
//                ThemeCardMini(theme: item)
//                    .padding(4)
//                    .environmentObject(reference)
//            }
//        }
//    } // ForEach
//}
//.padding()
