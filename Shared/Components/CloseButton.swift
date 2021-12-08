//
//  CloseButton.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 16, weight: .bold))
            .padding(.all, 10)
    }
}

struct CloseButton_Previews: PreviewProvider
{
    static var previews: some View
    {
        CloseButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

