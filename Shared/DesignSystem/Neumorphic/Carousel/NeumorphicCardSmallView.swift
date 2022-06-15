//
//  NeumorphicCardSmallView.swift
//  LaminarModes
//
//  Created by Anya Traille on 15/12/21.
//

import SwiftUI

struct NeumorphicCardSmallView: View
{
    @EnvironmentObject private var reference: Reference
    var chapter: Dessert?
    var imageWidth: CGFloat = 120
    var frameWidth: CGFloat = 150
    var frameHeight: CGFloat = 230
    var idWidth: CGFloat = 75
    var idHeight: CGFloat = 24
    var textColors: Color = Color(hue: 0/360, saturation: 0, brightness: 0.30)
    
    var body: some View
    {
        VStack(alignment: .leading, spacing: 12.0)
        {
            Text(chapter?.itemID ?? "No data")
                .font(Font.caption)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(width: idWidth, height: idHeight, alignment: .leading)
                .padding(.leading, 16)
                .background(chapter?.color ?? Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Image(chapter?.image ?? "frozen-sorbet-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Price")
                        .font(Font.caption.smallCaps())
                        .foregroundColor(textColors)
                    Text("$"+(chapter?.amount ?? "No data"))
                        .font(Font.footnote)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(textColors)
                        .lineLimit(2)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Last Bid")
                        .font(Font.caption.smallCaps())
                        .foregroundColor(textColors)
                    Text("$"+(chapter?.amount ?? "No data"))
                        .font(Font.footnote)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(textColors)
                        .lineLimit(2)
                }
            }
            Spacer()
        }
        .padding(.top, 20)
        .padding([.leading, .trailing], (frameWidth - imageWidth)/2)
        .frame(width: frameWidth, height: frameHeight)
        .background(Color("off-white"))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        .padding(.top, 16)
    }
}

struct NeumorphicCardSmallView_Previews: PreviewProvider
{
    static var previews: some View {
        NeumorphicCardSmallView(chapter: Reference().libraries[0].books.last!.chapters.last!)
            .previewLayout(.sizeThatFits)
    }
}
