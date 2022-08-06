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
    
    @State var editingBookNameTextField = false
    @State var editingBookDescriptionInput = false
    @State var bookIconBounce = false
    @State var descriptionIconBounce = false
    @Binding var bookNameInput: String
    @Binding var bookDescriptionInput: String
    @Binding var addingBook: Bool
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
                    
                    GradientTextField(editingTextField: $editingBookNameTextField, textfieldString: $bookNameInput, iconBounce: $bookIconBounce, textfieldPlaceholder: "Flavor", textfieldIconString: "fork.knife")
                }
                
                Group {
                    Text("Description")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                    
                    GradientTextField(editingTextField: $editingBookDescriptionInput, textfieldString: $bookDescriptionInput, iconBounce: $descriptionIconBounce, textfieldPlaceholder: "Description", textfieldIconString: "book.fill")
                }
                
                Button(action: {
                    
                    self.reference.referenceProjectID = self.libraryID
                    
                    self.reference.addBook(image: "lightbulb.fill", name: self.bookNameInput, description: self.bookDescriptionInput, color: (reference.referenceProjectID == reference.libraries[0].uniqueID) ? (colorScheme == .dark ? Colors().pLight.randomElement()! : Colors().pDark.randomElement()!) : (colorScheme == .dark ? Colors().vLight.randomElement()! : Colors().vDark.randomElement()!))
                    
                    addingBook = false
                    bookNameInput = ""
                    bookDescriptionInput = ""
                    
                }, label: {
                    
                    GradientButtonView(buttonTitle: "Save")
                })
            }
            .padding()
            .frame(maxWidth: 300)
            .frame(height: 300)
            
            
            Button(action: {
                addingBook = false
                bookNameInput = ""
                bookDescriptionInput = ""
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
        AddBookView(libraryID: Reference().libraries[0].uniqueID, bookNameInput: .constant("Test Theme"), bookDescriptionInput: .constant("Test description"), addingBook: .constant(true)).previewLayout(.sizeThatFits)
    }
}
