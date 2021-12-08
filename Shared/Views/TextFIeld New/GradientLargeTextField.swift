//
//  GradientLargeTextField.swift
//  UserStoryMap
//
//  Created by Anya Traille on 15/6/21.
//

import SwiftUI

struct GradientLargeTextField: View
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
        HStack(spacing: 12)
        {
            TextEditor(text: $textfieldString)
                .frame(maxHeight: 100)
                .colorScheme(.dark)
                .foregroundColor(.white.opacity(0.7))
        } // HStack
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.white, lineWidth: 1.0)
                .blendMode(.overlay))
        .background(Color(
            "secondaryBackground")
                        .cornerRadius(16)
        )
    }
}

struct GradientLargeField_Previews: PreviewProvider
{
    static var previews: some View
    {
        GradientLargeTextField(
            editingTextField: .constant(true),
            textfieldString: .constant("Some string here"),
            iconBounce: .constant(false),
            textfieldPlaceholder: "Test text field",
            textfieldIconString: "textformat.alt")
    }
}

