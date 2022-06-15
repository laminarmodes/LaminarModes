//
//  GlassmorphicLazyChapters.swift
//  LaminarModes
//
//  Created by Anya Traille on 17/12/21.
//

import SwiftUI

struct GlassmorphicLazyChapters: View {
    
    var chapter: Dessert?
    var frameHeight: CGFloat = 230
    var idWidth: CGFloat = 75
    var idHeight: CGFloat = 24
    var imageWidth: CGFloat = 120
    var textColors: Color = Color(hue: 0/360, saturation: 0, brightness: 0.30)
    
    var body: some View {
//        HStack
//        {
//            VStack(alignment: .leading, spacing: 12.0)
//            {
////                Image(systemName: chapter?.icon ?? "person.fill")
////                    .foregroundColor(chapter?.color ?? Color.gray)
//
//                HStack {
//                    Image(chapter?.icon ?? "Vector")
//
//                    Text(chapter?.role ?? "No data")
//                        .font(Font.caption.smallCaps())
//                        .fontWeight(.bold)
//                        .foregroundColor(chapter?.color ?? Color.gray)
//                        .lineLimit(2)
//                        .multilineTextAlignment(.leading)
//                }
//
//                Text(chapter?.description ?? "No data")
//                    .font(Font.callout)
//                    .multilineTextAlignment(.leading)
//                    .foregroundColor(Color("dark-text"))
//                    .lineLimit(2)
//
//                Spacer()
//            }
//            Spacer()
//        }
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
            
            HStack {
                Spacer()
                Image(chapter?.image ?? "frozen-sorbet-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth)
                Spacer()
            }
            
            Spacer()
            
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
            //Spacer()
        }
        .padding()
        .frame(height: frameHeight, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
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
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct GlassmorphicLazyChapters_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicLazyChapters(chapter: Reference().libraries[0].books.last!.chapters.last!)
            .previewLayout(.sizeThatFits)
    }
}
