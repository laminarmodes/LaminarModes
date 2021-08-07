//
//  AffinityMap.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import SwiftUI

struct AffinityMap: View {
    
    @EnvironmentObject private var reference: Reference
    
    
    @State private var addingStory = false
    @State private var editingStory = false
//    @State private var addingTheme = false
    
    @State private var roleInput = ""
    @State private var descriptionInpt = ""
    @State private var date = Date()
    @State private var priorityInput = ""
    @State private var detailsInput = ""
    
    @State var showModal = false
    
    @State var currentStory: iStory?
    @State var currentTheme: iTheme?
    
    @State var themeID: Int? // change to currentthemeID
    @State var currentStoryID: Int?
    
    @State var projectID: Int
    
    
    
    var body: some View {
                ZStack
                {
                    Color("off-white")
                        .edgesIgnoringSafeArea(.all)
        
                    addStoryMode
                    editStoryMode
//                    addThemeMode
                    
        
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        // Stack each row vertically
                        VStack {
                            // For each row
                            ForEach(reference.themes.reversed(), id: \.id) { themeItem in
                                // Stack each ellipsis on each story
                                ZStack {
                                    // Stack a row header on each story
                                    VStack(alignment: .leading) {
                                        // Place a header and button horizontally
                                        HStack {
                                            RowHeaderView(themeName: themeItem.name, numberOfStories: self.reference.totalStoriesInt(for: themeItem))
        
                                            Spacer()
        
                                            Button(action:
                                                    {
                                                        addingStory = true
                                                        themeID = themeItem.id
        
                                                    }, label: {
        
                                                        Text("+ New Item")
                                                            .foregroundColor(themeItem.color)
                                                    }).padding(.trailing, 8)
                                        } // HStack
        
                                        // Scroll view for all story cards
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            // Stack cards horizontally
                                            HStack(spacing: 20) {
                                                // For each card
                                                ForEach(themeItem.stories.reversed(), id: \.id) { item in
        
                                                    ZStack(alignment: .topTrailing) {
                                                        StoryCardItem(story: item)
                                                            .sheet(isPresented: $showModal) {
                                                                DetailsView(story: currentStory, closeButton: true, themeId: currentTheme?.id ?? 1).environmentObject(reference)
                                                            } // StoryCard Item
                                                            .onTapGesture {
                                                                currentStory = item
                                                                currentTheme = themeItem
                                                                withAnimation(.spring()) {
                                                                    showModal = true
                                                                }
                                                            } // onTapGesture
        
                                                        Button(action: {
                                                            editingStory = true
                                                            currentStory = item
                                                            currentStoryID = item.id
                                                            currentTheme = themeItem
                                                            themeID = themeItem.id
        
                                                        }, label: {
                                                            Image(systemName: "ellipsis")
                                                                //.foregroundColor(Color.white.opacity(0.9))
                                                                .foregroundColor(Color("gray-text"))
                                                                .padding([.top, .trailing], 16)
                                                        })
                                                    } // ZStack
                                                } // ForEach
                                            } // HStack
                                            .padding(.bottom, 28) // prevents shadow from being cut off
                                        } // ScrollView
                                        .padding(.top, 1) // padding between text and cards
                                    }
                                    .padding(.top, 0)
                                    .zIndex(1)
                                } // ZStack
                            } // ForEach
                        } // VStack
                        .zIndex(1)
                    } // Scrollview
                } // ZStack
                .onAppear() {
                    DispatchQueue.main.async {
                        self.reference.referenceProjectID = self.projectID
                    }
                    
                    
                }
    }
    

    
    @ViewBuilder
    var addStoryMode: some View
    {
        if (addingStory)
        {
            AddStoryView(
                roleInput: $roleInput,
                descriptionInput: $descriptionInpt,
                detailsInput: $detailsInput,
                priorityInput: $priorityInput,
                addingStory: $addingStory,
                projectID: projectID,
                themeID: themeID,
                storyColor: currentTheme?.color)
                .environmentObject(reference)
                .zIndex(2)
            //                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
            //                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
    
    @ViewBuilder
    var editStoryMode: some View
    {
        if (editingStory)
        {
            EditStoryView(editingStory: $editingStory, projectID: projectID, themeID: themeID, currentStoryID: currentStoryID ?? 1)
                .environmentObject(reference)
                .zIndex(2)
                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
    

    
    
}

struct AffinityMap_Previews: PreviewProvider {
    static var previews: some View {
        AffinityMap(projectID: 1).environmentObject(Reference())
    }
}
