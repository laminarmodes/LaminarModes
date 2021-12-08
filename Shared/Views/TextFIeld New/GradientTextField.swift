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
        //.padding(.bottom, 4)
        Divider()
            .padding(.bottom, 10)
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

