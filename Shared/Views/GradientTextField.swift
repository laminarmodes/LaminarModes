//
//  GradientTextField.swift
//  UserStoryMap
//
//  Created by Anya Traille on 15/6/21.
//

import SwiftUI

struct GradientTextField: View
{
    // Binding is necessary because we have to pass the data backwards when it is changed
    @Binding var editingTextField: Bool
    @Binding var textfieldString: String
    @Binding var iconBounce: Bool
    
    
    // These will not be changed
    var textfieldPlaceholder: String
    var textfieldIconString: String
    
    private let generator = UISelectionFeedbackGenerator()
    
    var body: some View
    {
        
        TextField(textfieldPlaceholder, text: $textfieldString)
            .padding(.bottom, 4)
        Divider()
//
//        HStack(spacing: 12)
//        {
//            // Note: editingTextField is changed (moves backwards) and is a binding variable
//            TextfieldIcon(
//                iconName: textfieldIconString,
//                currentlyEditing: $editingTextField,
//                passedImage: .constant(nil))
//                .scaleEffect(iconBounce ? 1.2 : 1.0)
//
//            // Note: textFieldString is changed (moves backwards) and is a binding variable
//            TextField(textfieldPlaceholder, text: $textfieldString) { isEditing in
//                editingTextField = isEditing
//
//                generator.selectionChanged()
//                if isEditing {
//                    withAnimation(
//                        .spring(
//                            response: 0.3,
//                            dampingFraction: 0.4,
//                            blendDuration: 0.5)
//                    )
//                    {
//                        iconBounce.toggle()
//                    } // withAnimation
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.25)
//                    {
//                        withAnimation(
//                            .spring(
//                                response: 0.3,
//                                dampingFraction: 0.4,
//                                blendDuration: 0.5
//                            ) // sprint
//                        ) // withAnimation
//                        {
//                            iconBounce.toggle()
//                        }
//                    } // Dispatch Qeuue
//                } // if isEditing
//            } // TextField
//
//
//            .colorScheme(.dark)
//            .foregroundColor(Color("textField-color").opacity(0.7))
//        } // HStack
//        .overlay(
//            RoundedRectangle(cornerRadius: 16)
//                .stroke(Color("textField-color"), lineWidth: 1.0)
//                .blendMode(.overlay))
//        .background(Color("secondaryBackground").opacity(0.5))
//        .cornerRadius(16)
    }
    
}

struct GradientTextField_Previews: PreviewProvider
{
    static var previews: some View
    {
        GradientTextField(
            editingTextField: .constant(true),
            textfieldString: .constant(""),
            iconBounce: .constant(false),
            textfieldPlaceholder: "Placeholder text",
            textfieldIconString: "textformat.alt")
    }
}

//RoundedRectangle(cornerRadius: 16)
//    .stroke(Color.white, lineWidth: 1.0)
//    .blendMode(.overlay))

//        .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark).cornerRadius(16))

//        .background(Color(
//                        red: 26/255,
//                        green: 20/255,
//                        blue: 51/255)
//                        .cornerRadius(16)
