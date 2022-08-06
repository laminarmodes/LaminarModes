//
//  GlassmorphicView.swift
//  OnlineBankingBusiness
//
//  Created by Anya Traille on 7/12/21.
//

import SwiftUI







struct GlassmorphicView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var libraryID: UUID
    
    var body: some View
    {
            ZStack
            {
                
//                            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topTrailing, endPoint: .bottomLeading)
//                                .edgesIgnoringSafeArea(.all)
//
//                VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
//                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false)
                {
                    VStack
                    {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                            ForEach(reference.flavours.reversed(), id: \.uniqueID) { item in
                                
                                NavigationLink(destination: BookLazyChaptersGlassmorphic(libraryID: libraryID, bookID: item.uniqueID).environmentObject(reference))
                                {
                                    HStack {
                                        GlassmorphicLazyCard(book: item)
                                            .padding(4)
                                            .environmentObject(reference)
                                    }
                                }
                            } // ForEach
                        }
                        .padding()
                    } // VStack
                } // SCrollView
                .navigationTitle("Theme 2")
            }
            .background(
                Image("blob-background-gray")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            )
    }
}

struct GlassmorphicView_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphicView(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}















//struct GlassmorphicView: View {
//
//    @EnvironmentObject private var reference: Reference
//    @State var libraryID: UUID
//
//    var body: some View {
//        ZStack {
////            Color("off-white")
////                .edgesIgnoringSafeArea(.all)
//
//            LinearGradient(gradient: Gradient(colors: [Color.red, Color.purple]), startPoint: .top, endPoint: .bottom)
//                        .edgesIgnoringSafeArea(.vertical)
//
//            ScrollView(.vertical, showsIndicators: false)
//            {
//                VStack
//                {
//                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
//                        ForEach(reference.books.reversed(), id: \.uniqueID) { item in
//
//                                NavigationLink(destination: BookWithLazyChapters(libraryID: libraryID, bookID: item.uniqueID).environmentObject(reference))
//                                {
//                                    HStack {
//                                        GlassmorphicLazyCard(book: item)
//                                            .padding(4)
//                                            .environmentObject(reference)
//                                    }
//                                }
//                        } // ForEach
//                    }
//                    .padding()
//                } // VStack
//            } // SCrollView
//            .navigationTitle("Glassmorphism")
//            .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterial))
//
//        } //: ZStack
//    }
//}
//
//struct GlassmorphicView_Previews: PreviewProvider {
//    static var previews: some View {
//        GlassmorphicView(libraryID: Reference().libraries[0].uniqueID).environmentObject(Reference())
//    }
//}
