//
//  BookLazyChaptersNeumorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct BookLazyChaptersNeumorphic: View {
    
    @EnvironmentObject private var reference: Reference
    //    @State var projectID: UUID
    var libraryID: UUID
    let bookID: UUID
    
    var body: some View {
        
        ZStack {
            
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                BookCardLargeViewNeumorphic(book: reference.findBookById(inputThemeId: bookID))
                    .environmentObject(reference)
                    .padding([.top], 8)
                    .padding([.leading, .trailing], 16)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                    {
                        
                        ForEach(reference.findBookById(inputThemeId: bookID).chapters.reversed(), id: \.uniqueID) { story in
                            
                            
                            NavigationLink( destination: DetailsView(bookID: bookID, chapter: story, closeButton: true).environmentObject(reference))
                            {
                                HStack
                                {
                                    NeumorphicLazyChapters(chapter: story)
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
                    self.reference.referenceBookID = self.bookID
                    self.reference.referenceProjectID = self.libraryID
                    let _ = print("Hi")
                }
            }
        }
        .navigationTitle("Neumorphism")
    }
}

struct BookLazyChaptersNeumorphic_Previews: PreviewProvider {
    static var previews: some View {
        BookLazyChaptersNeumorphic(libraryID: Reference().libraries[0].uniqueID, bookID: Reference().libraries[0].books[0].uniqueID).environmentObject(Reference())
    }
}
