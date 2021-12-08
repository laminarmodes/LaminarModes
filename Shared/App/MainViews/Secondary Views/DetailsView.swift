//
//  DetailsView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI
//import SwiftUICharts

struct DetailsView: View
{
    @Environment(\.presentationMode) var presentationMode
    var themeId: UUID
    
    var story: Chapter?
    var details: String?
    var closeButton = true
    let screenWidth = UIScreen.main.bounds.size.width
    
    
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                BookHeaderLarge(theme: reference.findBookById(inputThemeId: themeId)).environmentObject(reference)
                    .zIndex(1)
                
                ZStack(alignment: .topTrailing)
                {
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        VStack(alignment: .center, spacing: 20)
                        {
                            VStack(alignment: .leading, spacing: 20)
                            {
                                Text(story?.role ?? "No data")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                //.padding(.horizontal)
                                    .foregroundColor(story?.color)
                                Text(story?.description ?? "No data")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .multilineTextAlignment(.leading)
                                
                                
                                Text("Details".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(story?.color)
                                
                                Text(story?.details ?? "No data")
                                    .font(.body)
                            }
                        } // VStack
                    } // ScrollView
                    .padding(.horizontal,20)
                } // ZStack
                .frame(maxWidth: 640)
                .navigationBarTitle("Details", displayMode: .inline)
                
            } // VStack
        } // ZStack
        .onAppear() {
            self.reference.referenceBookID = self.themeId
        }
    } // body
} // Detail View

struct DetailsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DetailsView(themeId: Reference().libraries[0].books[0].uniqueID).environmentObject(Reference())
    }
}
