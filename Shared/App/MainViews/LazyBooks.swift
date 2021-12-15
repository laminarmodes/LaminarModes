//
//  LazyThemes.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI

struct LazyBooks: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    var body: some View {
        ZStack {
            
            
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack
                {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                        ForEach(reference.books.reversed(), id: \.uniqueID) { item in
                            
                                NavigationLink(destination: BookWithLazyChapters(libraryID: libraryID, bookID: item.uniqueID).environmentObject(reference))
                                {
                                    HStack {
                                        BookCardSmallHeightInfiniteWidthView(book: item)
                                            .padding(4)
                                            .environmentObject(reference)
                                    }
                                }
                        } // ForEach
                    }
                    .padding()
                } // VStack
            } // SCrollView
            
        } //: ZStack
    }
}

struct LazyThemes_Previews: PreviewProvider {
    static var previews: some View {
        LazyBooks(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
