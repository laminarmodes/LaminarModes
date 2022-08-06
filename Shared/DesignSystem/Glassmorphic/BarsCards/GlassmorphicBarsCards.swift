//
//  GlassmorphicBarsCards.swift
//  LaminarModes
//
//  Created by Anya Traille on 16/12/21.
//

import SwiftUI

struct GlassmorphicBarsCards: View
{
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    
    @State var barChart = true
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    var body: some View {
        ZStack
        {
//            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
//                .edgesIgnoringSafeArea(.all)
//
//
//
//            VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
//                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                let noStories = (0..<(reference.flavours.count)).map{ _ in Double.random(in: 1 ... 20) }
                
                    BarChartViewCustomNew(data: ChartData(points: noStories),
                                          title: "Total per Set",
                                          form: CGSize(width: CGFloat(screenWidth-40),
                                                       height: CGFloat(210)),
                                          dropShadow: false,
                                          animatedToBack: true).environmentObject(reference).padding(8)

                

                ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
                {
                    VStack // Stack of account cards
                    {
                        ForEach(reference.flavours.reversed(), id: \.uniqueID) { item in
                            
                            NavigationLink( destination: ChapterList(libraryID: libraryID, bookID: item.uniqueID, theme: item).environmentObject(reference))
                            {
                                HStack
                                {
                                    BookCardLargeViewGlassmorphic(book: item)
                                    //.padding()
                                        .padding([.top, .bottom], 8)
                                        .padding([.leading, .trailing], 16)
                                        .environmentObject(reference)
                                }
                                //.padding([.leading, .trailing], 10)
                            }
                        } // ForEach
                    } // VStack
                } // SCrollView
            }
            .navigationTitle("Theme 2")
        } //: ZStack
        .background(
            Image("blob-background-gray")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct GlassmorphicBarsCards_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicBarsCards(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
