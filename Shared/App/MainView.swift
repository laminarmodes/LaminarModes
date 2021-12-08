//
//  HomeView2.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI
import SwiftUICharts

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct MainView: View
{
    //MARK: - Properties
    
    @State var projectID: Int

    @EnvironmentObject private var reference: Reference
    
    @State var showStories = false
    @State var showStoryDetail = false
    @State var isDisabled = false
    @State var selectedTheme: iTheme?
    @State var selectedThemeId: Int?
    @State var selectedStory: iStory?
    
    
    @State var addingTheme = false

    
    @State var themeNameInput = ""
    @State var themeDescriptionInput = ""
    @State var showAffinityMap = false
    
    @State var isFocused = false
    @State var projectName: String?
    
    @State var show = true
    
//    @State var showModal = false
    
    
    @Namespace var namespace
    let screenWidth = UIScreen.main.bounds.size.width
    //var namespace: Namespace.ID
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
                    Image(systemName: "pencil")
                    Text("New Data")
                }
            
            AffinityMap(projectID: projectID).environmentObject(reference)
                .tabItem {
                    Image(systemName: "wand.and.rays")
                    Text("Organize")
                }
            
//            addThemeMode
            
            LazyThemes(projectID: projectID).environmentObject(reference)
            //lazyThemes
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            
            ThemeList(projectID: projectID).environmentObject(reference)
            //themeList
                .tabItem {
                    Image(systemName: "desktopcomputer")
                    Text("Present")
                }
            
            Analytics(projectID: projectID).environmentObject(reference)
            //analytics
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Data")
                }
            
        } // TabView
        //.navigationTitle("Test")
    } // tabbar
    

    
    @ViewBuilder
    var addThemeMode: some View
    {
        if (addingTheme)
        {
            AddThemeView(
                themeNameInput: $themeNameInput,
                themeDescriptionInput: $themeDescriptionInput,
                addingTheme: $addingTheme,
                projectID: projectID)
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
        
        MainView(projectID: 1)
            .environmentObject(Reference())
    }
}
