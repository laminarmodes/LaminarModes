//
//  ThemeLazyStories.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 30/11/21.
//

import SwiftUI

struct BookWithLazyChapters: View {
    
    @EnvironmentObject private var reference: Reference
    //    @State var projectID: UUID
    var libraryID: UUID
    let bookID: UUID
    
    
    
    var body: some View {
        
        VStack {
            
//            HStack {
//                Text(reference.findBookById(inputThemeId: bookID).name )
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(reference.findBookById(inputThemeId: bookID).color ?? Color.gray)
//                Spacer()
//            }
//            .padding(.horizontal)
            
            BookCardLargeView(book: reference.findBookById(inputThemeId: bookID))
                .environmentObject(reference)
                .padding([.top], 8)
                .padding([.leading, .trailing], 16)
                .padding([.bottom], 8)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                {
                    
                    ForEach(reference.findBookById(inputThemeId: bookID).desserts.reversed(), id: \.uniqueID) { story in
                        
                        
                        NavigationLink( destination: DetailsView(bookID: bookID, chapter: story, closeButton: true).environmentObject(reference))
                        {
                            HStack
                            {
                                ChapterCardSmallHeightInfiniteWidthView(chapter: story)
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
        //.navigationTitle(reference.findBookById(inputThemeId: bookID).name).foregroundColor(reference.findBookById(inputThemeId: bookID).color ?? Color.gray)
        .navigationTitle("Default Theme")
        
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceBookID = self.bookID
                self.reference.referenceProjectID = self.libraryID
                let _ = print("Hi")
            }
        }
        
        
    }
}

struct ThemeLazyStories_Previews: PreviewProvider {
    static var previews: some View {
        BookWithLazyChapters(libraryID: Reference().libraries[0].uniqueID, bookID: Reference().libraries[0].flavours.last!.uniqueID).environmentObject(Reference())
    }
}
