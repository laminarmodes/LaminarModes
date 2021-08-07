//
//  DetailsView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI
//import SwiftUICharts

struct DetailsView: View
{
    @Environment(\.presentationMode) var presentationMode
    
    //var theme: iTheme?
    var story: iStory?
    var details: String?
    var closeButton = true
    let screenWidth = UIScreen.main.bounds.size.width
    
    var themeId: Int
    //    var namespace: Namespace.ID
    ////    var storyID: Int?
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        //NavigationView {
        
        ZStack {
            
            VStack {
                
            
//                ZStack {
                    
                    ThemeHeader(theme: reference.readTheme(inputThemeId: themeId)).environmentObject(reference)
                        .zIndex(1)
                    
                    //VStack {
                        
                        
                        //HStack {
                            //Spacer()
                            
//                            if closeButton
//                            {
//                                CloseButton()
//                                    .onTapGesture
//                                    {
//                                        presentationMode.wrappedValue.dismiss()
//                                    }
//                                    .padding(20)
//                                    .zIndex(2)
//                            }
//                        }
                        
                        // Spacer()
                        
                    //}
                    
                    
                //}
            
        
        
        ZStack(alignment: .topTrailing)
        {
            ScrollView(.vertical, showsIndicators: false)
            {
                VStack(alignment: .center, spacing: 20)
                {
                    
//                                        LineChartView(data: [8,23,54,32,12,37,7,23,43], title: "Chart Data is WIP", form: CGSize(width: screenWidth-16, height: 220), dropShadow: false)
//                                            .frame(maxWidth: 640)
                    
                    
                    
                    
                    //.matchedGeometryEffect(id: reference.readTheme(inputThemeId: themeId).id, in: namespace)
                    
                    
                    
                    VStack(alignment: .leading, spacing: 20)
                    {
                        Text(story?.role ?? "No data")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            //.padding(.horizontal)
                            .foregroundColor(story?.color)
                        Text(story?.description ?? "No data")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        GroupBox()
                        {
                            DisclosureGroup("Information")
                            {
                                VStack
                                {
                                    Divider().padding(.vertical,2)
                                    HStack
                                    {
                                        
                                        
                                        Group {
                                            Image(systemName: "info.circle")
                                            Text("Person")
                                            
                                        }
                                        .foregroundColor(story?.color ?? Color.black)
                                        .font(Font.system(.body).bold())
                                        
                                        Spacer(minLength: 20)
                                        Text(story?.interviewer ?? "No data")
                                            .multilineTextAlignment(.trailing)
                                    }
                                    
                                    
                                    Divider().padding(.vertical,2)
                                    HStack
                                    {
                                        Group {
                                            Image(systemName: "info.circle")
                                            Text("Location")
                                            
                                        }
                                        .foregroundColor(story?.color ?? Color.black)
                                        .font(Font.system(.body).bold())
                                        Spacer(minLength: 20)
                                        Text(story?.storyLocation ?? "No data")
                                            .multilineTextAlignment(.trailing)
                                    }
                                    
                                    
                                    Divider().padding(.vertical,2)
                                    HStack
                                    {
                                        Group {
                                            Image(systemName: "info.circle")
                                            Text("Date")
                                            
                                        }
                                        .foregroundColor(story?.color ?? Color.black)
                                        .font(Font.system(.body).bold())
                                        Spacer(minLength: 0)
                                        Text(story?.storyDate ?? "No data")
                                            .multilineTextAlignment(.trailing)
                                    }
                                    
                                    
                                    Divider().padding(.vertical,2)
                                    HStack
                                    {
                                        Group {
                                            Image(systemName: "info.circle")
                                            Text("Time")
                                            
                                        }
                                        .foregroundColor(story?.color ?? Color.black)
                                        .font(Font.system(.body).bold())
                                        Spacer(minLength: 0)
                                        Text(story?.storyTime ?? "No data")
                                            .multilineTextAlignment(.trailing)
                                    }
                                }
                            }
                        }
                        
                        Text("Details".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(story?.color)
                        
                        Text(story?.details ?? "No data")
                            .font(.body)
                        
                        
                    }
                    //.padding(.horizontal,20)
                } // VStack
            } // ScrollView
            .padding(.horizontal,20)
            

        } // ZStack
        //        .onAppear {
        //            DispatchQueue.main.async {
        //                self.reference.storyID = self.storyID ?? 1
        //                self.reference.themeID = self.themeID ?? 1
        //
        //            }
        //        }
        .frame(maxWidth: 640)
        .navigationBarTitle("Details", displayMode: .inline)
        
            } // VStack
                
        } // ZStack
    } // body
} // Detail View

struct DetailsView_Previews: PreviewProvider
{
    //@Namespace static var namespace
    static var previews: some View
    {
        DetailsView(themeId: 1)
    }
}
