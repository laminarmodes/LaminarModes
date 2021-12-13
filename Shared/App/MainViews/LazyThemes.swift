//
//  LazyThemes.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI

struct LazyThemes: View {
    
    @EnvironmentObject private var reference: Reference
    @State var projectID: UUID
    
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
                            
                                NavigationLink(destination: ThemeLazyStories(projectID: projectID, themeId: item.uniqueID).environmentObject(reference))
                                {
                                    HStack {
                                        BookCardSmallHeightInfiniteWidthView(theme: item)
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
//        .onAppear() {
//            DispatchQueue.main.async {
//                self.reference.referenceProjectID = self.projectID
//            }
//        }
    }
}

struct LazyThemes_Previews: PreviewProvider {
    static var previews: some View {
        LazyThemes(projectID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
