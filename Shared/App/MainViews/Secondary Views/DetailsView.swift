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
    var bookID: UUID
    
    var chapter: Chapter?
    var details: String?
    var closeButton = true
    let screenWidth = UIScreen.main.bounds.size.width
    
    
    
    @EnvironmentObject private var reference: Reference
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                BookHeaderLarge(book: reference.findBookById(inputThemeId: bookID)).environmentObject(reference)
                    .zIndex(1)
                
                ZStack(alignment: .topTrailing)
                {
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        VStack(alignment: .center, spacing: 20)
                        {
                            VStack(alignment: .leading, spacing: 20)
                            {
                                Text(chapter?.role ?? "No data")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                //.padding(.horizontal)
                                    .foregroundColor(chapter?.color)
                                Text(chapter?.description ?? "No data")
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
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
                                                    Text("Type")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                
                                                Spacer(minLength: 20)
                                                Text(chapter?.interviewer ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("Location")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 20)
                                                Text(chapter?.storyLocation ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("Date")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 0)
                                                Text(chapter?.storyDate ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("Time")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 0)
                                                Text(chapter?.storyTime ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                        }
                                    }
                                }
                                
                                
                                Text("Details".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(chapter?.color)
                                
                                Text(chapter?.details ?? "No data")
                                    .font(.body)
                            }
                        } // VStack
                    } // ScrollView
                    .padding(.horizontal,20)
                } // ZStack
                .frame(maxWidth: 640)
                .navigationBarTitle("Details", displayMode: .inline)
                
            } // VStack
        } // ZStack
        .onAppear() {
            self.reference.referenceBookID = self.bookID
        }
    } // body
} // Detail View

struct DetailsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        DetailsView(bookID: Reference().libraries[0].books[0].uniqueID).environmentObject(Reference())
    }
}
