//
//  AddThemeView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 13/6/21.
//

import SwiftUI

struct AddBookView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    @State var editingThemeNameTextField = false
    @State var editingThemeDescriptionInput = false
    @State var themeIconBounce = false
    @State var descriptionIconBounce = false
    @Binding var themeNameInput: String
    @Binding var themeDescriptionInput: String
    @Binding var addingTheme: Bool
    @State var isFocused = false
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        
        ZStack(alignment: .topTrailing)
        {
            VStack(alignment: .leading)
            {
                Group {
                    Text("Name")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(editingTextField: $editingThemeNameTextField, textfieldString: $themeNameInput, iconBounce: $themeIconBounce, textfieldPlaceholder: "Theme Name", textfieldIconString: "at")
                }
                
                Group {
                    Text("Description")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(editingTextField: $editingThemeDescriptionInput, textfieldString: $themeDescriptionInput, iconBounce: $descriptionIconBounce, textfieldPlaceholder: "Theme description", textfieldIconString: "at")
                }
                
                Button(action: {
                    
                    self.reference.referenceProjectID = self.libraryID
                    
                    self.reference.addBook(image: "person.fill", name: self.themeNameInput, description: self.themeDescriptionInput, color: (reference.referenceProjectID == reference.libraries[0].uniqueID) ? (colorScheme == .dark ? Colors().pLight.randomElement()! : Colors().pDark.randomElement()!) : (colorScheme == .dark ? Colors().vLight.randomElement()! : Colors().vDark.randomElement()!))
                    
                    addingTheme = false
                    themeNameInput = ""
                    themeDescriptionInput = ""
                    
                }, label: {
                    
                    GradientButtonView(buttonTitle: "Save")
                })
            }
            .padding()
            .frame(maxWidth: 300)
            .frame(height: 300)
            
            
            Button(action: {
                addingTheme = false
                themeNameInput = ""
                themeDescriptionInput = ""
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

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView(libraryID: Reference().libraries[0].uniqueID, themeNameInput: .constant("Test Theme"), themeDescriptionInput: .constant("Test description"), addingTheme: .constant(true)).previewLayout(.sizeThatFits)
    }
}
