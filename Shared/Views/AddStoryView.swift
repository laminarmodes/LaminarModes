//
//  AddStoryView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 13/6/21.
//

import SwiftUI

struct AddStoryView: View {
    
    @State var editingRoleTextField = false
    @State var editingDescriptionTextField = false
    @State var editingDetailsTextField = false
    @State var editingPriorityTextField = false
    
    @State var roleIconBounce = false
    @State var descriptionIconBounce = false
    @State var detailsIconBounce = false
    @State var priorityIconBounce = false
    
    @Binding var roleInput: String
    @Binding var descriptionInput: String
    @Binding var detailsInput: String
    @Binding var priorityInput: String
    
    @Binding var addingStory: Bool
    
    @State var projectID: Int?
    @State var themeID: Int?
    
    @State var storyColor: Color?
    
    @State var isFocused = false
    
    @EnvironmentObject private var reference: Reference
    //@Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        //UserStoryMode()
        
        ZStack(alignment: .topTrailing) {
            
            VStack(alignment: .leading) {
                
                Text("New Item")
                    .foregroundColor(Color.primary.opacity(0.7))
                    .font(.title.bold())
                
                Spacer()
                
                Group
                {
                    Text("Title")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(
                        editingTextField: $editingRoleTextField,
                        textfieldString: $roleInput,
                        iconBounce: $roleIconBounce,
                        textfieldPlaceholder: "Enter title",
                        textfieldIconString: "at")
                        .autocapitalization(.none)
                        .keyboardType(.twitter)
                        .disableAutocorrection(true)
                        .padding(.bottom, 24)

                }
                
                Group
                {
                    Text("Description")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(
                        editingTextField: $editingDescriptionTextField,
                        textfieldString: $descriptionInput,
                        iconBounce: $descriptionIconBounce,
                        textfieldPlaceholder: "Enter description",
                        textfieldIconString: "at")
                        .autocapitalization(.none)
                        .keyboardType(.twitter)
                        .disableAutocorrection(true)
                        .padding(.bottom, 24)
                }
                
                
                
                Group
                {
                    Text("Details")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(
                        editingTextField: $editingDetailsTextField,
                        textfieldString: $detailsInput,
                        iconBounce: $detailsIconBounce,
                        textfieldPlaceholder: "Enter details",
                        textfieldIconString: "at")
                        .autocapitalization(.none)
                        .keyboardType(.twitter)
                        .disableAutocorrection(true)
                        .lineLimit(5)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 24)
                }
                
                
//                Group
//                {
//                    Text("Relevance")
//                        .foregroundColor(Color.primary.opacity(0.7))
//                        .font(.headline)
//
//                    GradientTextField(
//                        editingTextField: $editingPriorityTextField,
//                        textfieldString: $priorityInput,
//                        iconBounce: $priorityIconBounce,
//                        textfieldPlaceholder: "Relevance",
//                        textfieldIconString: "at")
//                        .autocapitalization(.none)
//                        .keyboardType(.twitter)
//                        .disableAutocorrection(true)
//                        .padding(.bottom, 24)
//                }
                
                
                Divider().padding(.leading)
                
                Group {
                    //Spacer()
                    Button(action: {
                        
                        self.reference.referenceProjectID = self.projectID ?? 1
                        self.reference.referenceThemeID = self.themeID ?? 1
                        
                        self.reference.addStory(image: "person.fill", role: self.roleInput, description: self.descriptionInput, date: "add later", priority: self.priorityInput, details: self.detailsInput, color: storyColor ?? Color.gray)
                        
                        addingStory = false
                        roleInput = ""
                        descriptionInput = ""
                        priorityInput = ""
                        detailsInput = ""
                        
                    }, label: {
                        
                        GradientButtonView(buttonTitle: "Save")
                        
                    })
                }
            }
            .padding()
            .frame(maxWidth: 300)
            .frame(maxHeight: 500)
            .clipShape(RoundedRectangle(cornerRadius: 70))
            
            
            Button(action: {
                addingStory = false
                //presentationMode.wrappedValue.dismiss()
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
//                        .background(Color("secondaryBackground").opacity(0.5))
                        .background(VisualEffectBlur(blurStyle: .systemMaterial))
                        .shadow(color: Color("shadow-color"), radius: 60, x: 0, y: 30)
        )
        .cornerRadius(30)
    }
}

struct AddStoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddStoryView(roleInput: .constant("Test Role"), descriptionInput: .constant("Test Description"), detailsInput: .constant("Test Details"), priorityInput: .constant("Test priority"), addingStory: .constant(true), themeID: 1, storyColor: Color.gray).previewLayout(.sizeThatFits)
    }
}
