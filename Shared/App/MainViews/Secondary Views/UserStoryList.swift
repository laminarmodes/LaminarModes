//
//  UserStoryList.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct UserStoryList: View
{
    @EnvironmentObject private var reference: Reference
    var projectID: UUID
    let themeId: UUID
    
    // Injecting iTheme for now but can remove this later because passing in environment
    var theme: Book?
    
    
    
    
    @State private var newItem: String?
    @State private var loaded = false
    @State var showModal = false
    @State var showData = false
    @State var barChart = true
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    var body: some View
    {
        VStack()
        {
            BookHeaderLarge(theme: reference.findBookById(inputThemeId: themeId)).environmentObject(reference)
                .zIndex(1)
            
            List
            {
                if (loaded == true)
                {
                    ForEach(reference.chapters, id: \.uniqueID) { item in
                        
                        NavigationLink(destination: DetailsView(themeId: themeId, story: item, closeButton: false).environmentObject(reference)) {
                            HStack
                            {
                                ChapterListRowView(storyId: item.uniqueID, story: item)
                                    .padding(.vertical,4)
                                    .environmentObject(reference)
                            }
                        }
                    } // ForEach
                } // if loaded == true
            } // ScrollView
            .onAppear {
                DispatchQueue.main.async {
                    self.reference.referenceBookID = self.themeId
                    self.loaded = true
                    self.reference.referenceProjectID = self.projectID
                }
            }
            Spacer()
        } // VStack
        .onAppear() {
            self.reference.referenceProjectID = self.projectID
        }
        .navigationBarTitle("Story List", displayMode: .inline)
    } // body
} // struct TransactionsView

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStoryList(projectID: Reference().libraries[0].uniqueID, themeId: Reference().libraries[0].books[0].uniqueID)
            .environmentObject(Reference())
        
    }
}

