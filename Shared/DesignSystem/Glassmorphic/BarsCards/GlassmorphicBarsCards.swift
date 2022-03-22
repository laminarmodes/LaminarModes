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
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            
//            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange, Color.red]), startPoint: .topTrailing, endPoint: .bottomLeading)
//                .edgesIgnoringSafeArea(.all)
            
            VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                let noStories = (0..<(reference.books.count)).map{ _ in Double.random(in: 1 ... 20) }
                
                    BarChartViewCustomNew(data: ChartData(points: noStories),
                                          title: "Total per Book",
                                          form: CGSize(width: CGFloat(screenWidth-40),
                                                       height: CGFloat(210)),
                                          dropShadow: false,
                                          animatedToBack: true).environmentObject(reference).padding(8)
//                    .background(
//                        ZStack {
//
//                            LinearGradient(gradient: Gradient(colors: [Color(.systemBackground).opacity(1), Color(.systemBackground).opacity(0.6)]), startPoint: .top, endPoint: .bottom)
//                                .cornerRadius(20)
//                                .blendMode(.softLight)
//                        }
//                    )
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 20)
//                            .stroke(.linearGradient(colors: [.white.opacity(0.8), .black.opacity(0.2)], startPoint: .top, endPoint: .bottom))
//                            .blendMode(.overlay)
//                    )
//                    .frame(height: 210) // same as passed into MultiLineChartViewCustom (check)
//                    .accentColor(.primary.opacity(0.7))
//                    .padding(.bottom, 24)
//                    .padding(.top, 8)
                

                ScrollView(.vertical, showsIndicators: false) // Make entire view scrollable
                {
                    VStack // Stack of account cards
                    {
                        ForEach(reference.books.reversed(), id: \.uniqueID) { item in
                            
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
            .navigationTitle("Glassmorphism")
        } //: ZStack
        
    }
}

struct GlassmorphicBarsCards_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicBarsCards(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
