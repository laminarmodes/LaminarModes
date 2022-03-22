//
//  NeumorphicLazyChapters.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct NeumorphicLazyChapters: View {
    
    var chapter: Chapter?
    
    var body: some View {
        HStack
        {
            VStack(alignment: .leading, spacing: 12.0)
            {
                Image(systemName: chapter?.icon ?? "person.fill")
                    .foregroundColor(chapter?.color ?? Color.gray)
                
                Text(chapter?.role ?? "No data")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(chapter?.color ?? Color.gray)
                    .lineLimit(1)
                    .multilineTextAlignment(.leading)
                
                Text(chapter?.description ?? "No data")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("dark-text"))
                    .lineLimit(2)
                
                Spacer()
            }
            Spacer()
        }
        .padding()
        .frame(height: 150, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct NeumorphicLazyChapters_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicLazyChapters()
            .previewLayout(.sizeThatFits)
    }
}
