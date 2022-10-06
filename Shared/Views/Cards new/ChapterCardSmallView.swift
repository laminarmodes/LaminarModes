//
//  StoryCardItem.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct ChapterCardSmallView: View
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
            
            Image(uiImage: chapter?.image ?? UIImage(named: "frozen-sorbet-1")!)
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
                    Text("$" + String(format: "%.2f", 37.85 + (Double(chapter?.amount ?? "0.0") ?? 0.0)))
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
        .cardStyle(backgroundColor: chapter?.color?.opacity(0.3) ?? Color.gray.opacity(0.6))
    }
}

struct ChapaterCardSmallView_Previews: PreviewProvider
{
    static var previews: some View {
        ChapterCardSmallView(chapter: Reference().libraries[0].flavours.last!.desserts.last!)
            .previewLayout(.sizeThatFits)
    }
}
