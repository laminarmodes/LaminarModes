//
//  GlassmorphicView.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 7/12/21.
//

import SwiftUI

struct GlassmorphicView: View {
    
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
    }
}

struct GlassmorphicView_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicView(projectID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
