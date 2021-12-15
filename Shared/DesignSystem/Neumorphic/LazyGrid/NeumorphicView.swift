//
//  NeumorphicView.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 7/12/21.
//

import SwiftUI

struct NeumorphicView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    var body: some View {
        ZStack {
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack
                {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                        ForEach(reference.books.reversed(), id: \.uniqueID) { item in
                            
                                NavigationLink(destination: BookLazyChaptersNeumorphic(libraryID: libraryID, bookID: item.uniqueID).environmentObject(reference))
                                {
                                    HStack {
                                        NeumorphicLazyCard(book: item)
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
        .navigationTitle("Neumorphism")
    }
}

struct NeumorphicView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicView(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}

