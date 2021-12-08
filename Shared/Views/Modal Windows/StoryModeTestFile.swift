////
////  StoryMode.swift
////  UserStoryMap
////
////  Created by Anya Traille on 19/1/21.
////
//
//import SwiftUI
//
//struct StoryMode: View
//{
//    @State var roleInput = ""
//    @State var descriptionInpt = ""
//    @State var date = Date()
//    @State var priorityInput = ""
//    @State var detailsInput = StoryDetail(detailDescription: "", location: "")
//
//    @Environment(\.presentationMode) var presentationMode
//
//    @State var isFocused = false
//
//    var body: some View
//    {
//
//        VStack(alignment: .leading)
//        {
//
//            Group {
//                Text("Role")
//                    .font(.headline)
//                    .padding(.leading)
//                TextField("Enter role", text: $roleInput)
//                    .font(.subheadline)
//                    .padding(.leading)
//                    .frame(height: 44)
//                    .onTapGesture {
//                        self.isFocused = true
//                    }
//
//                //Divider().padding(.leading)
//
//                Text("Description")
//                    .font(.headline)
//                    .padding(.leading)
//                TextField("Enter description", text: $descriptionInpt)
//                    .font(.subheadline)
//                    .padding(.leading)
//                    .frame(height: 44)
//                    .onTapGesture {
//                        self.isFocused = true
//                    }
//
//                //Divider().padding(.leading)
//            }
//
//            Group {
//                Text("Details")
//                    .font(.headline)
//                    .padding(.leading)
//                TextField("Details", text: $detailsInput.location)
//                    .font(.subheadline)
//                    .padding(.leading)
//                    .frame(height: 44)
//                    .onTapGesture {
//                        self.isFocused = true
//                    }
//
//               // Divider().padding(.leading)
//
//                Text("Priority")
//                    .font(.headline)
//                    .padding(.leading)
//                TextField("Priority level", text: $priorityInput)
//                    .font(.subheadline)
//                    .padding(.leading)
//                    .frame(height: 44)
//                    .onTapGesture {
//                        self.isFocused = true
//                    }
//
//               // Divider().padding(.leading)
//
//            }
//
//            Group {
//                //Spacer()
//                Button(action: {
//
//                    //addingStory = false
//                    roleInput = ""
//                    descriptionInpt = ""
//                    priorityInput = ""
//                    detailsInput.location = ""
//                    detailsInput.detailDescription = ""
//                    self.presentationMode.wrappedValue.dismiss()
//
//                }, label: {
//                    Text("Save")
//                        .font(.headline)
//                        .padding(.leading)
//                })
//            }
//        }
//        .padding()
//        .frame(maxWidth: 300)
//        .frame(maxHeight: 500)
//        .clipShape(RoundedRectangle(cornerRadius: 70))
//    }
//
//    struct StoryMode_Previews: PreviewProvider {
//        static var previews: some View {
//            StoryMode()
//                .previewLayout(.sizeThatFits)
//        }
//    }
//}
