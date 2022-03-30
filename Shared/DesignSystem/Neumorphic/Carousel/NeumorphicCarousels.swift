//
//  NeumorphicCarousels.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct NeumorphicCarousels: View {
    
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
    @State var currentChapter: Chapter?
    @State var currentBook: Book?
    
    @State var currrentChapterID: UUID?
    @State var selected: String?
    
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    @State var barChart = false
    
    var body: some View {
        ZStack
        {
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
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
                                                     title: "Amount per item", form: CGSize(width: CGFloat(screenWidth-16), height: CGFloat(220)), dropShadow: false)
                        }
                    }
                
                
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
                                        BookCarouselHeaderView(bookName: themeItem.name, numberOfStories: self.reference.totalChaptersInt(for: themeItem))
                                        
                                        Spacer()
                                        
//                                        Button(action:
//                                                {
//                                            addingChapter = true
//                                            themeID = themeItem.uniqueID
//
//                                        }, label: {
//
//                                            Text("+ New Item")
//                                                .foregroundColor(themeItem.color)
//                                        }).padding(.trailing, 8)
                                    } // HStack
                                    
                                    // Scroll view for all story cards
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        // Stack cards horizontally
                                        HStack(spacing: 20) {
                                            
                                            ForEach(themeItem.chapters.reversed(), id: \.uniqueID) { item in
                                                
                                                ZStack(alignment: .topTrailing) {
                                                    NeumorphicCardSmallView(chapter: item)
                                                        
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
//                                                            .foregroundColor(Color.gray)
//                                                            .padding([.top, .trailing], 16)
//                                                            //.padding(.trailing, 16)
//                                                            .padding(.top, 16)
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
        .navigationTitle("Neumorphism")
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.libraryID
            }
        }
        
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

struct NeumorphicCarousels_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicCarousels(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
