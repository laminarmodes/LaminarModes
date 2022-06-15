//
//  GlassmorphicCarousels.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct GlassmorphicCarousels: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    @State var themeID: UUID?
    
    @State private var addingChapter = false
    @State private var editingChapter = false
    @State private var roleInput = ""
    @State private var descriptionInpt = ""
    @State private var date = Date()
    @State private var priorityInput = ""
    @State private var detailsInput = ""
    @State var showModal = false
    @State var currentChapter: Dessert?
    @State var currentBook: Flavour?
    
    @State var currrentChapterID: UUID?
    @State var selected: String?
    
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    @State var barChart = false
    
    var body: some View {
        ZStack
        {
//                        LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
//                            .edgesIgnoringSafeArea(.all)
//
//
//
//            VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
//                .edgesIgnoringSafeArea(.all)
            
            addStoryMode
            editStoryMode
            
            VStack
            {

                    ZStack {
                        
                        ForEach(reference.books.reversed(), id: \.uniqueID) { themeItem in
                            
                            let dummyNumbers = (0..<8).map{ _ in Double.random(in: 1 ... 112) }
                            
                            MultiLineChartViewCustom(data:
                                                        [
                                                            (dummyNumbers, GradientColor(start: (themeItem.color ?? Color.gray).opacity(0.3), end: (themeItem.color ?? Color.gray))),
                                                        ],
                                                     title: "Amount per item", form: CGSize(width: CGFloat(screenWidth-48), height: CGFloat(210)), dropShadow: false).padding(16)
                                
                        }
                    }
                    .background(
                        ZStack {
                            
                            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground).opacity(1), Color(.systemBackground).opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                                .cornerRadius(20)
                                .blendMode(.softLight)
                        }
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.linearGradient(colors: [.white.opacity(0.8), .black.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                            .blendMode(.overlay)
                    )
                    .frame(height: 210) // same as passed into MultiLineChartViewCustom (check)
                    .accentColor(.primary.opacity(0.7))
                    .padding(.bottom, 24)
                    .padding(.top, 16)
                    
                
                
                ScrollView(.vertical, showsIndicators: false)
                {
                    // Stack each row vertically
                    VStack {
                        // For each row
                        ForEach(reference.books.reversed(), id: \.uniqueID) { themeItem in
                            // Stack each ellipsis on each story
                            ZStack {
                                // Stack a row header on each story
                                VStack(alignment: .leading) {
                                    // Place a header and button horizontally
                                    HStack {
                                        GlassmorphicCarouselHeaderView(bookName: themeItem.name, numberOfStories: self.reference.totalChaptersInt(for: themeItem))
                                        
                                        Spacer()
                                        
//                                        Button(action:
//                                                {
//                                            addingChapter = true
//                                            themeID = themeItem.uniqueID
//
//                                        }, label: {
//
//                                            Text("+ New Item")
//                                                .foregroundColor(Color.white.opacity(0.8))
//                                        }).padding(.trailing, 8)
                                    } // HStack
                                    
                                    // Scroll view for all story cards
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        // Stack cards horizontally
                                        HStack(spacing: 20) {
                                            
                                            ForEach(themeItem.chapters.reversed(), id: \.uniqueID) { item in
                                                
                                                ZStack(alignment: .topTrailing) {
                                                    GlassmorphicCardSmallView(chapter: item)
                                                        
                                                        .onTapGesture {
                                                            DispatchQueue.main.async {
                                                                currentChapter = item
                                                                currentBook = themeItem
                                                                
                                                                let _ = print(currentBook!.name)
                                                                let _ = print(currentBook!.uniqueID)
                                                            }
                                                            withAnimation(.spring()) {
                                                                showModal = true
                                                                selected = "Hello"
                                                            }
                                                        } // onTapGesture

                                                        .sheet(item: $selected, content: { oneSelection in
                                                            DetailsView(bookID: currentBook?.uniqueID ?? reference.libraries[0].books[0].uniqueID, chapter: currentChapter, closeButton: true).environmentObject(reference)
                                                            
                                                                })
                                                        
                                                    
//                                                    Button(action: {
//                                                        editingChapter = true
//                                                        currentChapter = item
//                                                        //                                                        currentStoryID = item.id
//                                                        currrentChapterID = item.uniqueID
//                                                        currentBook = themeItem
//                                                        themeID = themeItem.uniqueID
//
//
//                                                    }, label: {
//                                                        Image(systemName: "ellipsis")
//                                                        //.foregroundColor(Color.white.opacity(0.9))
//                                                            .foregroundColor(Color("dark-text"))
//                                                            .padding([.top, .trailing], 16)
//                                                            //.padding(.top, 16)
//                                                    })
                                                } // ZStack
//
                                                
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
                
            } // VStack
        } // ZStack
        .navigationTitle("Theme 2")
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.libraryID
            }
        }
        .background(
            Image("blob-background-gray")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaledToFill()
        )
        
    }
        
    
    @ViewBuilder
    var addStoryMode: some View
    {
        if (addingChapter)
        {
            AddChapterView(
                libraryID: libraryID,
                bookID: themeID,
                roleInput: $roleInput,
                descriptionInput: $descriptionInpt,
                detailsInput: $detailsInput,
                priorityInput: $priorityInput,
                addingChapter: $addingChapter,
                chapterColor: currentBook?.color)
                .environmentObject(reference)
                .zIndex(2)
        }
    }
    
    @ViewBuilder
    var editStoryMode: some View
    {
        if (editingChapter)
        {
            DeleteChapterView(libraryID: libraryID, bookID: themeID, currentChapterID: currrentChapterID ?? reference.chapters[0].uniqueID, editingChapter: $editingChapter)
                .environmentObject(reference)
                .zIndex(2)
                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
}



struct GlassmorphicCarousels_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicCarousels(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
