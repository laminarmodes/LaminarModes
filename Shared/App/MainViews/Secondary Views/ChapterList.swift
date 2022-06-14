//
//  UserStoryList.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct ChapterList: View
{
    @EnvironmentObject private var reference: Reference
    var libraryID: UUID
    let bookID: UUID
    
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
            BookHeaderLarge(book: reference.findBookById(inputThemeId: bookID)).environmentObject(reference)
                .zIndex(1)
            
            List
            {
                if (loaded == true)
                {
                    ForEach(reference.chapters, id: \.uniqueID) { item in
                        
                        NavigationLink(destination: DetailsView(bookID: bookID, chapter: item, closeButton: false).environmentObject(reference)) {
                            HStack
                            {
                                ChapterListRowView(chapterID: item.uniqueID, chapter: item)
                                    .padding(.vertical,4)
                                    .environmentObject(reference)
                            }
                        }
                    } // ForEach
                } // if loaded == true
            } // ScrollView
            .onAppear {
                DispatchQueue.main.async {
                    self.reference.referenceBookID = self.bookID
                    self.loaded = true
                    self.reference.referenceProjectID = self.libraryID
                }
                UITableView.appearance().backgroundColor = .clear
                UITableViewCell.appearance().backgroundColor = .clear
            }
            Spacer()
        } // VStack
        .onAppear() {
            self.reference.referenceProjectID = self.libraryID
        }
        .navigationBarTitle("Item List", displayMode: .inline)
        
    } // body
} // struct TransactionsView

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterList(libraryID: Reference().libraries[0].uniqueID, bookID: Reference().libraries[0].books[0].uniqueID)
            .environmentObject(Reference())
        
    }
}

