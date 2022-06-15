//
//  BookLazyChaptersGlassmorphic.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct BookLazyChaptersGlassmorphic: View {
    
    @EnvironmentObject private var reference: Reference
    //    @State var projectID: UUID
    var libraryID: UUID
    let bookID: UUID
    
    var body: some View {
        
        ZStack {
            
//                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
//                            .edgesIgnoringSafeArea(.all)
//
//
//            VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
//                .edgesIgnoringSafeArea(.all)
            
            VStack {
                BookCardLargeViewGlassmorphic(book: reference.findBookById(inputThemeId: bookID))
                    .environmentObject(reference)
                    .padding([.top], 8)
                    .padding([.leading, .trailing], 16)
                    
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
                    {
                        
                        ForEach(reference.findBookById(inputThemeId: bookID).desserts.reversed(), id: \.uniqueID) { story in
                            
                            
                            NavigationLink( destination: DetailsView(bookID: bookID, chapter: story, closeButton: true).environmentObject(reference))
                            {
                                HStack
                                {
                                    GlassmorphicLazyChapters(chapter: story)
                                        .padding(4)
                                        .environmentObject(reference)
                                }
                            }
                        } // ForEach
                    }
                    .padding(.horizontal)
                }
                //Spacer()
            } //: VStack
            .onAppear() {
                DispatchQueue.main.async {
                    self.reference.referenceBookID = self.bookID
                    self.reference.referenceProjectID = self.libraryID
                    let _ = print("Hi")
                }
            }
        }
        .navigationTitle("Glassmorphism")
        .background(
            Image("blob-background-gray")
                .resizable()
                .scaledToFill()
        )
        
    }
}

struct BookLazyChaptersGlassmorphic_Previews: PreviewProvider {
    static var previews: some View {
        BookLazyChaptersGlassmorphic(libraryID: Reference().libraries[0].uniqueID, bookID: Reference().libraries[0].flavours[0].uniqueID).environmentObject(Reference())
    }
}
