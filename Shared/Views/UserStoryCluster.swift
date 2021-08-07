////
////  UserStoryCluster.swift
////  UserStoryMap
////
////  Created by Anya Traille on 19/1/21.
////
//
//import SwiftUI
//
//struct UserStoryCluster: View {
//
//    var theme: iTheme?
//
//
//
//    @EnvironmentObject private var reference: Reference
//    let themeId: Int
//    //@State private var newItem: String?
//    @State private var loaded = false
//    @State var isFocused = false
//
//    @State var showStoryModal = false
//
//    @State var currentStory: iStory?
//    @State var showModal = false
//    @State var addingStory = false
//    @State var roleInput = ""
//    @State var descriptionInpt = ""
//    @State var date = Date()
//    @State var priorityInput = ""
//    @State var detailsInput = ""
//
//    //@State var currentStory = ""
//
//
//
//    //@Environment(\.presentationMode) var presentationMode
//
//    var body: some View {
//
//        return ZStack {
//
//            // This will only do domething if 'addingStory' is true
//            storyForm
//                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
//                .clipShape(RoundedRectangle(cornerRadius: 30))
//
//            VStack(alignment: .leading) {
//                HStack {
//                    Text(theme?.name ?? "No data")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .padding(.leading, 20)
//                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
//                    Image(systemName: "person.fill")
//                        .resizable()
//                        .frame(width: 15.0, height: 16.0)
//                    Text(self.reference.totalStories(for: theme ?? self.reference.themes[0]))
//
//                    Spacer()
//
//
//
//                    Button(action: {
//                        addingStory = true
//
//                    }, label: {
//                        Text("+ New story")
//                            .foregroundColor(theme?.color)
//                            .padding()
//                    })
//
//
//
//
//
//                    //                    Text("+ New Story")
//                    //                        .sheet(isPresented: $showStoryModal)
//                    //                        {
//                    //                            UserStoryMode()
//                    //                        }
//                    //                        .onTapGesture {
//                    //                            withAnimation(.spring()) {
//                    //                                showStoryModal = true
//                    //                            }
//                    //                        }
//
//
//
//                    //                    Button("Show sheet")
//                    //                    {
//                    //                        showStoryModal = true
//                    //                    }
//                    //                    .sheet(isPresented: $showStoryModal)
//                    //                    {
//                    //                        UserStoryMode()
//                    //                    }
//
//
//                }
//
//
//                ScrollView(.horizontal, showsIndicators: false) {
//                    if loaded == true {
//
//                        HStack(spacing: 20) {
//
//                            // reference.projects[0].themes[0].stories
//
//                            if loaded {
//
//
////                                ForEach(theme?.stories.reversed() ?? reference.stories.reversed(), id: \.id) { item in
//
//                                                                ForEach(reference.stories.reversed(), id: \.id) { item in
//
//                                    StoryCardItem(story: item)
//                                        .sheet(isPresented: $showModal)
//                                        {
//                                            DetailsView(theme: theme, story: currentStory, closeButton: true)
//                                        }
//                                        .onTapGesture {
//                                            withAnimation(.spring()) {
//                                                currentStory = item
//                                                showModal = true
//                                            }
//                                        }
//                                        .onAppear {
//
//                                            DispatchQueue.main.async {
//                                                print("Inside Cluster, Story for Theme \(item.themeId)")
//
//                                            }
//                                        }
//                                } // ForEach
//                            }  // if loaded
//                        } // HStack
//
//                        .padding(.bottom, 30) // prevents shadow from being cut off
//
//                    } // if loaded
//
//                } // ScrollView
//                .onAppear {
//                    DispatchQueue.main.async {
//                        //print("Theme ID \(themeId)")
//                        self.reference.themeID = self.themeId
//                        self.loaded = true
//                        print("Reference Theme ID \(self.reference.themeID)")
//                        //self.loaded = true
//                    }
//                }
//            }
//            .zIndex(1)
//        }
//        //        .onAppear {
//        //            DispatchQueue.main.async {
//        //                //print("Theme ID \(themeId)")
//        //                self.reference.themeID = self.themeId
//        //                self.loaded = true
//        //                print("Reference Theme ID \(self.reference.themeID)")
//        //                //self.loaded = true
//        //            }
//        //        }
//
//    }
//
//
//    //MARK:  - Story Mode
//    // The reason it has to be done this way instead of using a .sheet is because you cannot resize the sheet and it ends up being full screen :(
//    @ViewBuilder
//    var storyForm: some View
//    {
//        if addingStory == true
//        {
//            //UserStoryMode()
//
//            ZStack(alignment: .topTrailing) {
//
//                VStack(alignment: .leading) {
//
//                    Group {
//                        Text("Role")
//                            .font(.headline)
//                            .padding(.leading)
//                        TextField("Enter role", text: $roleInput)
//                            .font(.subheadline)
//                            .padding(.leading)
//                            .frame(height: 44)
//                            .onTapGesture {
//                                self.isFocused = true
//                            }
//                        
//                        Divider().padding(.leading)
//
//                        Text("Description")
//                            .font(.headline)
//                            .padding(.leading)
//                        TextField("Enter description", text: $descriptionInpt)
//                            .font(.subheadline)
//                            .padding(.leading)
//                            .frame(height: 44)
//                            .onTapGesture {
//                                self.isFocused = true
//                            }
//
//                        Divider().padding(.leading)
//                    }
//
//                    Group {
//                        Text("Details")
//                            .font(.headline)
//                            .padding(.leading)
//                        TextField("Details", text: $detailsInput)
//                            .font(.subheadline)
//                            .padding(.leading)
//                            .frame(height: 44)
//                            .onTapGesture {
//                                self.isFocused = true
//                            }
//
//                        Divider().padding(.leading)
//
//                        Text("Priority")
//                            .font(.headline)
//                            .padding(.leading)
//                        TextField("Priority level", text: $priorityInput)
//                            .font(.subheadline)
//                            .padding(.leading)
//                            .frame(height: 44)
//                            .onTapGesture {
//                                self.isFocused = true
//                            }
//
//                        Divider().padding(.leading)
//
//                    }
//
//                    Group {
//                        //Spacer()
//                        Button(action: {
//
//                            self.reference.addStory(image: "person.fill", role: self.roleInput, description: self.descriptionInpt, date: "add later", priority: self.priorityInput, details: self.detailsInput, color: Color.gray)
//
//
//                            // self.reference.addPage(content: self.newItem!)
//
//                            addingStory = false
//                            roleInput = ""
//                            descriptionInpt = ""
//                            priorityInput = ""
//                            detailsInput = ""
//                            //detailsInput.detailDescription = ""
//                            //self.presentationMode.wrappedValue.dismiss()
//
//                        }, label: {
//                            Text("Save")
//                                .font(.headline)
//                                .padding(.leading)
//                        })
//                    }
//                }
//                .padding()
//                .frame(maxWidth: 300)
//                .frame(maxHeight: 500)
//                .clipShape(RoundedRectangle(cornerRadius: 70))
//
//                CloseButton()
//                    .onTapGesture {
//                        withAnimation(.spring()) {
//                            addingStory = false
//                            roleInput = ""
//                        }
//                        //presentationMode.wrappedValue.dismiss()
//                    }
//                    .padding(.all, 10)
//            }
//            .zIndex(2)
//        }
//    }
//
//}
//
//struct TransactionsCardRow_Previews: PreviewProvider {
//    static var previews: some View {
//        UserStoryCluster(themeId: 1)
//            .environmentObject(Reference())
//        //.previewLayout(.sizeThatFits)
//    }
//}
//
//
//
//
