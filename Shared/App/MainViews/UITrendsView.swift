//
//  Analytics.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI

struct UITrendsView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    var body: some View {
        VStack
        {
            List
            {
                Section(header: Text("Basic Layouts"))
                {
                    NavigationLink(destination: NeumorphicView(libraryID: libraryID).environmentObject(reference)) {
                        HStack
                        {
                            Text("Neumorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicView(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicColorView(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism (Color)")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                }
                
                Section(header: Text("Line Charts & Carousel"))
                {
                    NavigationLink(destination: NeumorphicCarousels(libraryID: libraryID).environmentObject(reference)) {
                        HStack
                        {
                            Text("Neumorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicCarousels(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicColorCarousels(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism (Color)")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                }
                
                Section(header: Text("Bar Charts & Card"))
                {
                    NavigationLink(destination: NeumorphicBarsCards(libraryID: libraryID).environmentObject(reference)) {
                        HStack
                        {
                            Text("Neumorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicBarsCards(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                    
                    NavigationLink(destination: GlassmorphicColorBarsCards(libraryID: libraryID)) {
                        HStack
                        {
                            Text("Glassmorphism (Color)")
                            Spacer()
                            Text("See sample")
                        }
                    }
                    .navigationTitle("Design Trends")
                }
                
            } // List
            
        } //: VStack
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.libraryID
            }
        }
    }
}

struct UITrendsView_Previews: PreviewProvider {
    static var previews: some View {
        UITrendsView(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
