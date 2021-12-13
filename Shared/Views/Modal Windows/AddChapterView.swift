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
    
    @State var roleIconBounce = false
    @State var descriptionIconBounce = false
    @State var detailsIconBounce = false
    @State var priorityIconBounce = false
    
    @Binding var roleInput: String
    @Binding var descriptionInput: String
    @Binding var detailsInput: String
    @Binding var priorityInput: String
    
    @Binding var addingChapter: Bool
    
    
    
    @State var chapterColor: Color?
    
    @State var isFocused = false
    
    
    
    var body: some View {
        
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
                        .padding(.bottom, 5)
                    
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
                        .padding(.bottom, 5)
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
                        .padding(.bottom, 5)
                }
                
                Group {
                    //Spacer()
                    Button(action: {
                        
                        self.reference.referenceProjectID = self.libraryID ?? reference.libraries[0].uniqueID
                        self.reference.referenceBookID = self.bookID ?? reference.libraries[0].books[0].uniqueID
                        
                        self.reference.addChapter(image: "person.fill", role: self.roleInput, description: self.descriptionInput, date: "add later", priority: self.priorityInput, details: self.detailsInput, color: chapterColor ?? Color.gray)
                        
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
            .padding()
            .frame(maxWidth: 300)
            .frame(maxHeight: 400)
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
        AddChapterView(bookID: Reference().libraries[0].books[0].uniqueID, roleInput: .constant("Test Role"), descriptionInput: .constant("Test Description"), detailsInput: .constant("Test Details"), priorityInput: .constant("Test priority"), addingChapter: .constant(true),  chapterColor: Color.gray).previewLayout(.sizeThatFits)
    }
}
