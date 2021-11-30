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
    
    //    @State var themeID: Int? // change to currentthemeID
    //    @State var currentStoryID: Int?
//    @State var currentStory: iStory?
//    @State var currentTheme: iTheme?
    
    //    @State var addingStory = false
    //    @State var editingStory = false
        
    //    @State private var roleInput = ""
    //    @State private var descriptionInpt = ""
    //    @State private var date = Date()
    //    @State private var priorityInput = ""
    //    @State private var detailsInput = ""
    
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
    
    @State var show = false
    
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
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.projectID
            }
            
            
        }
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


//                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 180))], spacing: 8)
//                    LazyVGrid(columns: [GridItem(.fixed(250)), GridItem(.fixed(250))], spacing: 4)

//         ScrollView {
//             LazyVGrid(columns: columns) {
//                 ForEach((0...79), id: \.self) {
//                     let codepoint = $0 + 0x1f600
//                     let codepointString = String(format: "%02X", codepoint)
//                     Text("\(codepointString)")
//                     let emoji = String(Character(UnicodeScalar(codepoint)!))
//                     Text("\(emoji)")
//                 }
//             }.font(.largeTitle)
//         }


//MARK: - Story List

//        @ViewBuilder
//        var storyList: some View
//        {
//            if selectedTheme != nil
//            {
//                ZStack(alignment: .topTrailing) // Will put xmark on top right
//                {
//                    UserStoryList(
//                        projectID: projectID,
//                        theme: selectedTheme,
//                        themeId: selectedThemeId ?? 1,
//                        namespace: namespace)
//                        .environmentObject(reference)
//
//                    CloseButton()
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                showStories.toggle() // No longer show TransactionView?
//                                selectedTheme = nil // An account is no longer selected
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                                    isDisabled = false
//                                }
//                            }
//                        }
//                } // ZStack
//                .zIndex(2)
//                .frame(maxWidth: 712)
//                .frame(maxWidth: .infinity)
//            }
//        } // transactionsContent




// Row Title
//                                    Text(themeItem.name)
//                                        .font(.title2)
//                                        .fontWeight(.bold)
//                                        .padding(.leading, 20)
//                                        .foregroundColor(Color.primary.opacity(0.7))
//                                    Image(systemName: "person.fill")
//                                        .resizable()
//                                        .frame(width: 15.0, height: 16.0)
//                                    Text(self.reference.totalStories(for: themeItem))
//                                    Text(String(self.reference.totalStoriesInt(for: themeItem)))


//    @ViewBuilder
//    var affinityMap: some View
//    {
//        ZStack
//        {
//            Color("off-white")
//                .edgesIgnoringSafeArea(.all)
//
//            addStoryMode
//            editStoryMode
//            addThemeMode
//
//            ScrollView(.vertical, showsIndicators: false)
//            {
//                // Stack each row vertically
//                VStack {
//                    // For each row
//                    ForEach(reference.themes.reversed(), id: \.id) { themeItem in
//                        // Stack each ellipsis on each story
//                        ZStack {
//                            // Stack a row header on each story
//                            VStack(alignment: .leading) {
//                                // Place a header and button horizontally
//                                HStack {
//                                    RowHeaderView(themeName: themeItem.name, numberOfStories: self.reference.totalStoriesInt(for: themeItem))
//
//                                    Spacer()
//
//                                    Button(action:
//                                            {
//                                                addingStory = true
//                                                themeID = themeItem.id
//
//                                            }, label: {
//
//                                                Text("+ New Item")
//                                                    .foregroundColor(themeItem.color)
//                                            }).padding(.trailing, 8)
//                                } // HStack
//
//                                // Scroll view for all story cards
//                                ScrollView(.horizontal, showsIndicators: false) {
//                                    // Stack cards horizontally
//                                    HStack(spacing: 20) {
//                                        // For each card
//                                        ForEach(themeItem.stories.reversed(), id: \.id) { item in
//
//                                            ZStack(alignment: .topTrailing) {
//                                                StoryCardItem(story: item)
//                                                    .sheet(isPresented: $showModal) {
//                                                        DetailsView(story: currentStory, closeButton: true, themeId: currentTheme?.id ?? 1).environmentObject(reference)
//                                                    } // StoryCard Item
//                                                    .onTapGesture {
//                                                        currentStory = item
//                                                        currentTheme = themeItem
//                                                        withAnimation(.spring()) {
//                                                            showModal = true
//                                                        }
//                                                    } // onTapGesture
//
//                                                Button(action: {
//                                                    editingStory = true
//                                                    currentStory = item
//                                                    currentStoryID = item.id
//                                                    currentTheme = themeItem
//                                                    themeID = themeItem.id
//
//                                                }, label: {
//                                                    Image(systemName: "ellipsis")
//                                                        //.foregroundColor(Color.white.opacity(0.9))
//                                                        .foregroundColor(Color("gray-text"))
//                                                        .padding([.top, .trailing], 16)
//                                                })
//                                            } // ZStack
//                                        } // ForEach
//                                    } // HStack
//                                    .padding(.bottom, 28) // prevents shadow from being cut off
//                                } // ScrollView
//                                .padding(.top, 1) // padding between text and cards
//                            }
//                            .padding(.top, 0)
//                            .zIndex(1)
//                        } // ZStack
//                    } // ForEach
//                } // VStack
//                .zIndex(1)
//            } // Scrollview
//        } // ZStack
//    } // affinityMap

//MARK: - Affinity Map View


//    @ViewBuilder
//    var addStoryMode: some View
//    {
//        if (addingStory)
//        {
//            AddStoryView(
//                roleInput: $roleInput,
//                descriptionInput: $descriptionInpt,
//                detailsInput: $detailsInput,
//                priorityInput: $priorityInput,
//                addingStory: $addingStory,
//                projectID: projectID,
//                themeID: themeID,
//                storyColor: currentTheme?.color)
//                .environmentObject(reference)
//                .zIndex(2)
//            //                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
//            //                .clipShape(RoundedRectangle(cornerRadius: 30))
//        }
//    }
//
//    @ViewBuilder
//    var editStoryMode: some View
//    {
//        if (editingStory)
//        {
//            EditStoryView(editingStory: $editingStory, projectID: projectID, themeID: themeID, currentStoryID: currentStoryID ?? 1)
//                .environmentObject(reference)
//                .zIndex(2)
//                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
//                .clipShape(RoundedRectangle(cornerRadius: 30))
//        }
//    }
//
//    @ViewBuilder
//    var addThemeMode: some View
//    {
//        if (addingTheme)
//        {
//            AddThemeView(
//                themeNameInput: $themeNameInput,
//                themeDescriptionInput: $themeDescriptionInput,
//                addingTheme: $addingTheme,
//                projectID: projectID)
//                .environmentObject(reference)
//                .zIndex(2)
//                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
//                .clipShape(RoundedRectangle(cornerRadius: 30))
//        }
//    }



//MARK: - Theme List
//    @ViewBuilder
//    var themeList: some View
//    {
//        ZStack
//        {
//            Color("off-white")
//                .edgesIgnoringSafeArea(.all)
//
//            ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
//            {
//                VStack // Stack of account cards
//                {
//                    ForEach(reference.themes.reversed(), id: \.id) { item in
//
//                        NavigationLink( destination: UserStoryList(projectID: projectID, theme: item, themeId: item.id).environmentObject(reference))
//                        {
//                            HStack
//                            {
//                                ThemeCard(theme: item)
//                                    .padding()
//                                    .environmentObject(reference)
//                            }
//                        }
//                    } // ForEach
//                } // VStack
//            } // SCrollView
//        }
//        .zIndex(1) // bottom of transactionsView
//    }

//    @ViewBuilder
//    var lazyThemes: some View
//    {
//
//        var columns: [GridItem] =
//            Array(repeating: .init(.flexible()), count: 2)
//
//        ZStack {
//            Color("off-white")
//                .edgesIgnoringSafeArea(.all)
//
//
//            ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
//            {
//                VStack // Stack of account cards
//                {
//                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8)
//                    {
//                        ForEach(reference.themes.reversed(), id: \.id) { item in
//
//                            NavigationLink( destination: UserStoryList(projectID: projectID, theme: item, themeId: item.id).environmentObject(reference))
//                            {
//                                HStack
//                                {
//                                    ThemeCardMini(theme: item)
//                                        .padding(4)
//                                        .environmentObject(reference)
//                                }
//                            }
//                        } // ForEach
//                    }
//                    .padding()
//                } // VStack
//            } // SCrollView
//        }
//        .zIndex(1) // bottom of transactionsView
//    }


//    @ViewBuilder
//    var analytics: some View
//    {
//        VStack
//        {
//            HStack
//            {
//                BarChartView(data: ChartData(points: [55.0,48.0,46.0,32.0,28.0,20.0,12.0,4.0,3.0]), title: "Chart Data is WIP", legend: "role", style: Styles.barChartStyleNeonBlueLight, form: CGSize(width: CGFloat(screenWidth-16), height: CGFloat(220)), dropShadow: false)
//
//            }
//            .padding(.top, 16)
//            .padding(.bottom,16)
//
//            LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Chart Data is WIP", form: CGSize(width: screenWidth-16, height: 220), dropShadow: false)
//                .frame(maxWidth: 640)
//        }
//    }

//MARK: - Home

//    var home: some View
//    {
//        ZStack
//        {
//
//            RingView(width: 300, height: 300, percent: 88, show: .constant(true))
//                .zIndex(1)
//        }
//        .navigationTitle("User Research")
//    }
