//
//  HomeView2.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI
//import SwiftUICharts

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct MainView: View
{
    //MARK: - Properties
    
    @State var projectID: UUID
    
    @EnvironmentObject private var reference: Reference
    
    @State var showStories = false
    @State var showStoryDetail = false
    @State var isDisabled = false
    @State var selectedTheme: Book?
    @State var selectedThemeId: Int?
    @State var selectedStory: Chapter?
    @State var addingTheme = false
    @State var themeNameInput = ""
    @State var themeDescriptionInput = ""
    @State var showAffinityMap = false
    @State var isFocused = false
    @State var projectName: String?
    @State var show = true
    
    
    @Namespace var namespace
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: - Body
    var body: some View
    {
        ZStack
        {
            tabbar // This is the main view
                .navigationTitle(self.projectName ?? "Sample Project")
                .navigationBarItems(trailing: Button(action: {
                    addingTheme = true
                    
                }, label: {
                    Text("+ New List")
                }))
            addThemeMode
        } // ZStack
    } // var body
    
    //MARK: - Tab Bar
    var tabbar: some View
    {
        TabView
        {
            RingView(projectID: projectID, show: $show).environmentObject(reference)
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Quick Add")
                }
            
            AffinityMap(projectID: projectID).environmentObject(reference)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Tasks")
                }
            
            ThemeList(projectID: projectID).environmentObject(reference)
                .tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("Report")
                }
            
            LazyThemes(projectID: projectID).environmentObject(reference)
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("Plan")
                }
            
            UITrendsView(projectID: projectID).environmentObject(reference)
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
            
        } // TabView
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.projectID
            }
        }
    } // tabbar
    
    @ViewBuilder
    var addThemeMode: some View
    {
        if (addingTheme)
        {
            AddBookView(
                libraryID: projectID,
                themeNameInput: $themeNameInput,
                themeDescriptionInput: $themeDescriptionInput,
                addingTheme: $addingTheme)
                .environmentObject(reference)
                .zIndex(2)
                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
    
    
} // AccountsVLiew

//MARK: - Preview
struct MainView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        
        MainView(projectID: Reference().libraries[0].uniqueID)
            .environmentObject(Reference())
    }
}
