//
//  EditStoryView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 13/6/21.
//

import SwiftUI

struct EditStoryView: View {
    
    @Binding var editingStory: Bool
    
    @State var projectID: Int?
    @State var themeID: Int?
    
    @State var currentStoryID: Int
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View {
        
        ZStack(alignment: .topTrailing)
        {
            VStack(alignment: .leading)
            {
                
                    Text("How would you like to edit?")
                        .foregroundColor(Color.primary.opacity(0.7))
                        .font(.headline)
                
                Button(action:
                        {
                            
                            self.reference.referenceProjectID = self.projectID ?? 1
                            self.reference.referenceThemeID = self.themeID ?? 1
                            
                            self.reference.deleteStory(storyIdToRemove: currentStoryID)
                            editingStory = false
                            
                        }, label: {
                            
                            GradientButtonView(buttonTitle: "Delete")
                        })
                
            }
            .padding()
            .frame(maxWidth: 300)
            .frame(maxHeight: 200)
            .clipShape(RoundedRectangle(cornerRadius: 70))
            
            
            Button(action: {
                editingStory = false
                
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

struct EditStoryView_Previews: PreviewProvider {
    static var previews: some View {
        EditStoryView(editingStory: .constant(true), currentStoryID: 1)
    }
}
