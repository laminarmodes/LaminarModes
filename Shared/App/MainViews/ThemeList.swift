//
//  ThemeList.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import SwiftUI

struct ThemeList: View
{
    
    @EnvironmentObject private var reference: Reference
    @State var projectID: Int
    
    var body: some View {
        ZStack
        {
            Color("off-white")
                .edgesIgnoringSafeArea(.all)

            ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
            {
                VStack // Stack of account cards
                {
                    ForEach(reference.themes.reversed(), id: \.id) { item in
                        
                        NavigationLink( destination: UserStoryList(projectID: projectID, theme: item, themeId: item.id).environmentObject(reference))
                        {
                            HStack
                            {
                                ThemeCard(theme: item)
                                    //.padding()
                                    .padding([.top, .bottom], 8)
                                    .padding([.leading, .trailing], 16)
                                    .environmentObject(reference)
                            }
                            //.padding([.leading, .trailing], 10)
                        }
                    } // ForEach
                } // VStack
            } // SCrollView
            
        }
        .zIndex(1) // bottom of transactionsView
    }
}

struct ThemeList_Previews: PreviewProvider {
    static var previews: some View {
        ThemeList(projectID: 1).environmentObject(Reference())
    }
}
