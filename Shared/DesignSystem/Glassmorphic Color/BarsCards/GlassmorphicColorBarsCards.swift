//
//  GlassmorphicColorBarsCards.swift
//  LaminarModes
//
//  Created by Anya Traille on 16/12/21.
//

import SwiftUI

struct GlassmorphicColorBarsCards: View
{
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    
    @State var barChart = true
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    var body: some View {
        ZStack
        {
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                let noStories = (0..<(reference.flavours.count)).map{ _ in Double.random(in: 1 ... 20) }
                if(barChart)
                {
                    BarChartViewCustomNew(data: ChartData(points: noStories),
                                          title: "Total per Book",
                                          form: CGSize(width: CGFloat(screenWidth-16),
                                                       height: CGFloat(220)),
                                          dropShadow: false,
                                          animatedToBack: true).environmentObject(reference)
                } else
                {
                    ZStack {
                        ForEach(reference.flavours.reversed(), id: \.uniqueID) { themeItem in
                            
                            let dummyNumbers = (0..<8).map{ _ in Double.random(in: 1 ... 112) }
                            
                            MultiLineChartViewCustom(data:
                                                        [
                                                            (dummyNumbers, GradientColor(start: (themeItem.color ?? Color.gray).opacity(0.3), end: (themeItem.color ?? Color.gray))),
                                                        ],
                                                     title: "Balance", form: CGSize(width: CGFloat(screenWidth-16), height: CGFloat(220)), dropShadow: false)
                        }
                    }
                }
                
                ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
                {
                    VStack // Stack of account cards
                    {
                        ForEach(reference.flavours.reversed(), id: \.uniqueID) { item in
                            
                            NavigationLink( destination: ChapterList(libraryID: libraryID, bookID: item.uniqueID, theme: item).environmentObject(reference))
                            {
                                HStack
                                {
                                    BookCardLargeView(book: item)
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
            .navigationTitle("Glassmorphism (Color)")
        }
    }
}

struct GlassmorphicColorBarsCards_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicColorBarsCards(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
