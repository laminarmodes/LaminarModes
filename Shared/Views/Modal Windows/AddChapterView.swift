//
//  AddStoryView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 13/6/21.
//

import SwiftUI

struct AddChapterView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID?
    @State var bookID: UUID?
    
    @State var editingRoleTextField = false
    @State var editingDescriptionTextField = false
    @State var editingDetailsTextField = false
    @State var editingPriorityTextField = false
    
    @State var editingItemInput = false
    @State var editingAmountInput = false
    @State var editingDateOfCreationInput = false
    @State var editingItemIDInput = false
    
    
    @State var roleIconBounce = false
    @State var descriptionIconBounce = false
    @State var detailsIconBounce = false
    @State var priorityIconBounce = false
    
    @State var itemIconBounce = false
    @State var amountIconBounce = false
    @State var dateOfCreationBounce = false
    @State var itemIDBounce = false
    
    
    @Binding var roleInput: String
    @Binding var descriptionInput: String
    @Binding var detailsInput: String
    @Binding var priorityInput: String
    
    @Binding var itemInput: String
    @Binding var amountInput: String
    @Binding var dateOfCreationInput: String
    @Binding var itemIDInput: String
    
    @Binding var addingChapter: Bool
    
    
    
    @State var chapterColor: Color?
    
    @State var isFocused = false
    
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            VStack(alignment: .leading) {
                
                Text("New Item")
                    .foregroundColor(Color.primary.opacity(0.7))
                    .font(.title.bold())
                    .padding(.bottom, 15)
                
                Spacer()
                
                ScrollView {
                    Group
                    {
                        GradientTextField(
                            editingTextField: $editingRoleTextField,
                            textfieldString: $roleInput,
                            iconBounce: $roleIconBounce,
                            textfieldPlaceholder: "Name",
                            textfieldIconString: "tag.fill")
                            .autocapitalization(.none)
                            .keyboardType(.twitter)
                            .disableAutocorrection(true)
                            .padding(.bottom, 5)
                    }
                    
                    Group {
 
                        VStack {
                                        Image(uiImage: self.image)
                                      .resizable()
                                      //.cornerRadius(50)
                                      .frame(width: 100)
                                      .background(Color.black.opacity(0.2))
                                      .aspectRatio(contentMode: .fill)
                                      .padding(.bottom, 10)
                                      //.clipShape(Circle())

                            Button(action: {
                                
                                showSheet = true
                                
                            }, label: {
                                
                                GradientButtonView(buttonTitle: "Add Image")
                                
                            })

                                }
                            .padding(.horizontal, 20)
                            .padding(.bottom, 30)
                            .sheet(isPresented: $showSheet) {
                                        // Pick an image from the photo library:
                                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)

                                        //  If you wish to take a photo from camera instead:
                                        // ImagePicker(sourceType: .camera, selectedImage: self.$image)
                                }
                        
                    }
                    
                    Group
                    {
                        GradientTextField(
                            editingTextField: $editingDescriptionTextField,
                            textfieldString: $descriptionInput,
                            iconBounce: $descriptionIconBounce,
                            textfieldPlaceholder: "Description",
                            textfieldIconString: "book.closed.fill")
                            .autocapitalization(.none)
                            .keyboardType(.twitter)
                            .disableAutocorrection(true)
                            .padding(.bottom, 5)
                    }
                    
                    
                    Group
                    {
                        
                        
                        HStack {
                            Image(systemName: "book.fill")
                                .foregroundColor(Color.gray)
//                            TextField("Details", text: $detailsInput, axis: .vertical)
                            TextField("Details", text: $detailsInput)

                        }
                        Divider()
                            .padding(.bottom, 30)
                        

//                            .autocapitalization(.none)
//                            .keyboardType(.twitter)
//                            .disableAutocorrection(true)
//                            .lineLimit(5)
//                            .multilineTextAlignment(.leading)
//                            .padding(.bottom, 5)
                    }
                    
                    Group
                    {
                        GradientTextField(
                            editingTextField: $editingAmountInput,
                            textfieldString: $amountInput,
                            iconBounce: $amountIconBounce,
                            textfieldPlaceholder: "Amount",
                            textfieldIconString: "chart.bar.fill")
                            .autocapitalization(.none)
                            .keyboardType(.twitter)
                            .disableAutocorrection(true)
                            .lineLimit(5)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 5)
                    }
                    
                    Group
                    {
                        GradientTextField(
                            editingTextField: $editingDateOfCreationInput,
                            textfieldString: $dateOfCreationInput,
                            iconBounce: $dateOfCreationBounce,
                            textfieldPlaceholder: "Date of creation",
                            textfieldIconString: "at")
                            .autocapitalization(.none)
                            .keyboardType(.twitter)
                            .disableAutocorrection(true)
                            .lineLimit(5)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 5)
                    }
                    
                    Group
                    {
                        GradientTextField(
                            editingTextField: $editingItemIDInput,
                            textfieldString: $itemIDInput,
                            iconBounce: $itemIconBounce,
                            textfieldPlaceholder: "Item ID",
                            textfieldIconString: "number.square.fill")
                            .autocapitalization(.none)
                            .keyboardType(.twitter)
                            .disableAutocorrection(true)
                            .lineLimit(5)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom, 5)
                    }
                }
                
                Group {
                    //Spacer()
                    Button(action: {
                        
                        self.reference.referenceProjectID = self.libraryID ?? reference.libraries[0].uniqueID
                        self.reference.referenceBookID = self.bookID ?? reference.libraries[0].flavours[0].uniqueID
                        
                        self.reference.addChapter(image: self.image, role: self.roleInput, description: self.descriptionInput, date: "add later", priority: self.priorityInput, details: self.detailsInput, color: chapterColor ?? Color.gray,
                                                  item: self.itemInput, amount: self.amountInput, dateOfCreation: self.dateOfCreationInput, itemID: self.itemIDInput)
                        
                        addingChapter = false
                        roleInput = ""
                        descriptionInput = ""
                        priorityInput = ""
                        detailsInput = ""
                        
                    }, label: {
                        
                        GradientButtonView(buttonTitle: "Save")
                        
                    })
                }
            }
            .padding(30)
            .frame(maxWidth: 300)
            .frame(maxHeight: 600)
            .clipShape(RoundedRectangle(cornerRadius: 70))
            
            
            Button(action: {
                addingChapter = false
                roleInput = ""
                descriptionInput = ""
                priorityInput = ""
                detailsInput = ""
            }, label: {
                CloseButton()
            })
                .padding(.all, 10)
        }
        .zIndex(2)
        .background(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.primary.opacity(0))
                        .background(VisualEffectBlur(blurStyle: .systemMaterial))
                        .shadow(color: Color("shadow-color"), radius: 60, x: 0, y: 30)
        )
        .cornerRadius(30)
    }
}

struct AddChapterView_Previews: PreviewProvider {
    static var previews: some View {
        
//        AddChapterView(bookID: Reference().libraries[0].flavours[0].uniqueID, roleInput: .constant("Test Role"), descriptionInput: .constant("Test Description"), detailsInput: .constant("Test Details"), priorityInput: .constant("Test priority"), addingChapter: .constant(true),  chapterColor: Color.gray, itemInput: .constant("dessert"), amountInput: .constant("34.56"), ).previewLayout(.sizeThatFits)
        
        
        AddChapterView(
            libraryID: Reference().libraries[0].uniqueID,
            bookID: Reference().libraries[0].flavours[0].uniqueID,
            roleInput: .constant("Test"),
            descriptionInput: .constant("Test"),
            detailsInput: .constant("Test"),
            priorityInput: .constant("Test"),
            itemInput: .constant("Test"),
            amountInput: .constant("Test"),
            dateOfCreationInput: .constant("Test"),
            itemIDInput: .constant("Test"),
            addingChapter: .constant(true)
            )
        
    }
}
