//
//  EditStoryView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 13/6/21.
//

import SwiftUI

struct DeleteChapterView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID?
    @State var bookID: UUID?
    @State var currentChapterID: UUID
    
    @Binding var editingChapter: Bool
    
    
    
    var body: some View {
        
        ZStack(alignment: .topTrailing)
        {
            VStack(alignment: .leading)
            {
                Text("Confirm delete")
                    .foregroundColor(Color.primary.opacity(0.7))
                    .font(.headline)
                
                Button(action:
                        {
                    
                    self.reference.referenceProjectID = self.libraryID ?? reference.libraries[0].uniqueID
                    self.reference.referenceBookID = self.bookID ?? reference.libraries[0].flavours[0].uniqueID
                    
                    self.reference.deleteChapter(storyIdToRemove: currentChapterID)
                    editingChapter = false
                    
                }, label: {
                    
                    GradientButtonView(buttonTitle: "Delete")
                })
                
            }
            .padding()
            .frame(maxWidth: 300)
            .frame(maxHeight: 200)
            .clipShape(RoundedRectangle(cornerRadius: 70))
            
            Button(action: {
                editingChapter = false
                
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

struct DelteChapterView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteChapterView(currentChapterID: Reference().desserts[0].uniqueID, editingChapter: .constant(true))
    }
}
