//
//  UserStoryList.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI
import SwiftUICharts

struct UserStoryList: View
{
    
    var projectID: Int
    
    // Injecting iTheme for now but can remove this later because passing in environment
    var theme: iTheme?
    
    @EnvironmentObject private var reference: Reference
    let themeId: Int
    
    @State private var newItem: String?
    @State private var loaded = false
    @State var showModal = false
    @State var showData = false
    
    let screenWidth = UIScreen.main.bounds.size.width
    
    //var namespace: Namespace.ID
    var columnWidth: CGFloat = 100.0
    
    var body: some View
    {
        VStack()
        {
            if(!showData)
            {
                
                ThemeCard(theme: reference.readTheme(inputThemeId: themeId))
//                    .matchedGeometryEffect(id: reference.readTheme(inputThemeId: themeId).id, in: namespace)
            } else
            {
                HStack{
                    BarChartView(data: ChartData(points: [55.0,48.0,46.0,32.0,28.0,20.0,12.0,4.0,3.0]), title: "Chart Data is WIP", legend: "role", style: Styles.barChartStyleNeonBlueLight, form: CGSize(width: CGFloat(screenWidth-16), height: CGFloat(220)), dropShadow: false)
                    
                }
                .padding(.top, 16)
                .padding(.bottom,16)
            }
            
            List
            {
                if (loaded == true)
                {
                    ForEach(reference.stories, id: \.id) { item in
                        
                        NavigationLink(destination: DetailsView(story: item, closeButton: false, themeId: themeId).environmentObject(reference)) {
                            HStack
                            {
                                StoryRow(story: item, storyId: item.id)
                                    .padding(.vertical,4)
                                    .environmentObject(reference)
                            }
                        }
                    } // ForEach
                } // if loaded == true
            } // ScrollView
            //.navigationTitle("Story List")
            .onAppear {
                DispatchQueue.main.async {
                    self.reference.referenceThemeID = self.themeId
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
    //@Namespace static var namespace
    static var previews: some View {
        UserStoryList(projectID: 1, themeId: 1)
            .environmentObject(Reference())
        
    }
}

