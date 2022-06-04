//
//  GlassmorphicCardSmallView.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicCardSmallView: View
{
    @EnvironmentObject private var reference: Reference
    var chapter: Chapter?
    var imageWidth: CGFloat = 120
    var frameWidth: CGFloat = 150
    var frameHeight: CGFloat = 230
    var idWidth: CGFloat = 75
    var idHeight: CGFloat = 24
    var textColors: Color = Color(hue: 0/360, saturation: 0, brightness: 0.30)
    
    var body: some View
    {
//        HStack
//        {
//            VStack(alignment: .leading, spacing: 12.0)
//            {
//
//                Image(chapter?.icon ?? "frozen-sorbet-1")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: imageWidth)
//
//                Text(chapter?.role ?? "No data")
//                    .font(Font.caption.smallCaps())
//                    .fontWeight(.bold)
//                    .foregroundColor(chapter?.color ?? Color.gray)
//                    .lineLimit(2)
//                    .multilineTextAlignment(.leading)
//
//            Text(chapter?.description ?? "No data")
//                .font(Font.callout)
//                .multilineTextAlignment(.leading)
//                .foregroundColor(Color("dark-text"))
//                .lineLimit(2)
//
//            Spacer()
//
//            }
//            //Spacer()
//        }
////        .padding([.top, .leading], 16)
        VStack(alignment: .leading, spacing: 12.0)
        {
            Text(chapter?.storyTime ?? "No data")
                .font(Font.caption)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(width: idWidth, height: idHeight, alignment: .leading)
                .padding(.leading, 16)
                .background(chapter?.color ?? Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Image(chapter?.icon ?? "frozen-sorbet-1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageWidth)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Price")
                        .font(Font.caption.smallCaps())
                        .foregroundColor(textColors)
                    Text("$"+(chapter?.storyLocation ?? "No data"))
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
                    Text("$"+(chapter?.storyLocation ?? "No data"))
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
        .background(
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(.systemBackground).opacity(1), Color(.systemBackground).opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                    .cornerRadius(20)
                    .blendMode(.softLight)
            }
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.linearGradient(colors: [.white.opacity(0.8), .black.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                .blendMode(.overlay)
        )
        .frame(height: frameHeight)
        .accentColor(.primary.opacity(0.7))
        //.padding(.top, 16)
    }
}

struct GlassmorphicCardSmallView_Previews: PreviewProvider
{
    static var previews: some View {
        GlassmorphicCardSmallView(chapter: Reference().libraries[0].books.last!.chapters.last!)
            .previewLayout(.sizeThatFits)
    }
}
