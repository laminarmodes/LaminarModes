//
//  ThemeLazyStories.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 30/11/21.
//

import SwiftUI

struct ThemeLazyStories: View {
    
    @EnvironmentObject private var reference: Reference
    //    @State var projectID: UUID
    var projectID: UUID
    let themeId: UUID
    
    
    var body: some View {
        
        VStack {
            BookCardLargeView(theme: reference.findBookById(inputThemeId: themeId))
                .environmentObject(reference)
                .padding([.top], 8)
                .padding([.leading, .trailing], 16)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                {
                    
                    ForEach(reference.findBookById(inputThemeId: themeId).chapters.reversed(), id: \.uniqueID) { story in
                        
                        
                        NavigationLink( destination: DetailsView(themeId: themeId, story: story, closeButton: true).environmentObject(reference))
                        {
                            HStack
                            {
                                ChapterCardSmallHeightInfiniteWidthView(story: story)
                                    .padding(4)
                                    .environmentObject(reference)
                            }
                        }
                    } // ForEach
                }

                
                .padding(.horizontal)
            }
            
            Spacer()
        } //: VStack
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceBookID = self.themeId
                self.reference.referenceProjectID = self.projectID
                let _ = print("Hi")
            }
        }
    }
    
}

struct ThemeLazyStories_Previews: PreviewProvider {
    static var previews: some View {
        ThemeLazyStories(projectID: Reference().libraries[0].uniqueID, themeId: Reference().libraries[0].books[0].uniqueID).environmentObject(Reference())
    }
}



//                    ForEach(reference.findBookById(inputThemeId: themeId).chapters.reversed(), id: \.uniqueID) { story in

//                        NavigationLink( destination: DetailsView(themeId: reference.findBookById(inputThemeId: themeId).uniqueID, story: story, closeButton: true).environmentObject(reference))