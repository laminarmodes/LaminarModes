//
//  StoryCardLazy.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 30/11/21.
//

import SwiftUI

struct ChapterCardSmallHeightInfiniteWidthView: View {
    
    var chapter: Dessert?
    
    var imageWidth: CGFloat = 120
    var frameHeight: CGFloat = 230
    var idWidth: CGFloat = 75
    var idHeight: CGFloat = 24
    var textColors: Color = Color(hue: 0/360, saturation: 0, brightness: 0.30)
    
    var body: some View {
//        HStack
//        {
//            VStack(alignment: .leading, spacing: 12.0)
//            {
////                Image(systemName: chapter?.icon ?? "person.fill")
////                    .foregroundColor(Color.white.opacity(0.9))
//
//                HStack {
//                    Image(chapter?.icon ?? "Vector")
//
//                    Text(chapter?.role ?? "No data")
//                        .font(Font.caption.smallCaps())
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white.opacity(0.9))
//                        .lineLimit(2)
//                        .multilineTextAlignment(.leading)
//                }
//
//                Text(chapter?.description ?? "No data")
//                    .font(Font.callout)
//                    .multilineTextAlignment(.leading)
//                    .foregroundColor(Color.white.opacity(0.9))
//                    .lineLimit(2)
//
//                Spacer()
//            }
//            Spacer()
//        }
//        .padding()
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
//                    Text("$" + "\( 37.85 + (Double(chapter?.amount ?? "0.0") ?? 0.0)   )")
                    Text("$" + String(format: "%.2f", 37.85 + (Double(chapter?.amount ?? "0.0") ?? 0.0)))
                        .font(Font.footnote)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(textColors)
                        .lineLimit(2)
                }
                
                
            }
            //Spacer()
        }
        .padding()
        //.padding(.top, 20)
        //.padding([.leading, .trailing], (.framewidth - imageWidth)/2)
        .frame(height: frameHeight, alignment: .leading)
        .frame(maxWidth: .infinity, alignment: .leading)
        //.padding([.leading, .trailing], (.framewidth - imageWidth)/2)
        .background(chapter?.color?.opacity(0.3) ?? Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .shadow(color: chapter?.color ?? Color.gray.opacity(0.2), radius: 10, x: 10, y: 10)
//        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

struct ChapterCardSmallHeightInfiniteWidthView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterCardSmallHeightInfiniteWidthView(chapter: Reference().libraries[0].flavours.last!.desserts.last!)
            .previewLayout(.sizeThatFits)
    }
}

