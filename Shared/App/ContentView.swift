//
//  ContentView.swift
//  Shared
//
//  Created by Anya Traille on 7/8/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        NavigationView {
            VStack(alignment: .leading, spacing: 0)
            {
                VStack(alignment: .leading, spacing: 0) {
                    Text("NFT Dessert Organizer")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .padding(.bottom, 25)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                    
                    Text("SWIFTUI DESIGN SYSTEM")
                        .font(.caption)
                        .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                    
                    Text("UI Desserts")
                        .font(.title)
                        .padding(.bottom, 20)
                        .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                    
                    Text("This SwiftUI Design System uses an NFT Dessert Marketplace Theme")
                        .font(.footnote)
                        .padding(.bottom, 20)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                    
                    Text("Progress")
                        .font(.subheadline)
                        .bold()
                        .padding(.bottom, 10)
                        .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Image(systemName: "checkmark.square").foregroundColor(Color(hue: 151/360, saturation: 0.71, brightness: 0.72))
                            Text("Data Model").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "checkmark.square").foregroundColor(Color(hue: 151/360, saturation: 0.71, brightness: 0.72))
                            Text("Charts").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "checkmark.square").foregroundColor(Color(hue: 151/360, saturation: 0.71, brightness: 0.72))
                            Text("Colors").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "checkmark.square").foregroundColor(Color(hue: 151/360, saturation: 0.71, brightness: 0.72))
                            Text("Images").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "exclamationmark.square").foregroundColor(Color(hue: 25/360, saturation: 0.71, brightness: 1))
                            Text("Layouts").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "dot.square").foregroundColor(.red)
                            Text("Animations").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "dot.square").foregroundColor(.red)
                            Text("Icons").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        
                        HStack {
                            Image(systemName: "dot.square").foregroundColor(.red)
                            Text("Text Fields").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                        HStack {
                            Image(systemName: "dot.square").foregroundColor(.red)
                            Text("Buttons").font(.subheadline)
                                .foregroundColor(Color(hue: 0/360, saturation: 0, brightness: 0.30))
                        }
                    }
                    .padding(.bottom, 20)
                }
                Spacer()
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                    ForEach(reference.libraries, id: \.uniqueID) { project in
                        NavigationLink(destination: MainView(projectID: project.uniqueID, projectName: project.name).environmentObject(reference))
                        {
                            HStack {
                                ColorThemeView(
                                    themeName: project.name,
                                    totalColors: 3,
                                    themeBackground: project.flavours[3].color ?? Color.gray)
                            }
                        }
                    } // ForEach
                }
                //.padding()
                Spacer()
            }
            .padding([.leading, .trailing], 30)
            .padding(.top, 0)
            .padding(.bottom, 90)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//            .environmentObject(Reference()) //TODO: Temporary persistence (remove later)
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
        
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(Reference()) //TODO: Temporary persistence (remove later)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 mini"))
    }
}
