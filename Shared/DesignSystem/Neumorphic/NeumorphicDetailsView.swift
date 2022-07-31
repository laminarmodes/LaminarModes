//
//  NeumorphicDetailsView.swift
//  LaminarModes (iOS)
//
//  Created by Anya Traille on 16/12/21.
//

import SwiftUI

struct NeumorphicDetailsView: View
{
    @Environment(\.presentationMode) var presentationMode
    var bookID: UUID
    
    var chapter: Dessert?
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
                                Text(chapter?.type ?? "No data")
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
                                                    Text("Person")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                
                                                Spacer(minLength: 20)
                                                Text(chapter?.item ?? "No data")
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
                                                Text(chapter?.amount ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("Price")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 0)
                                                Text("$"+(chapter?.amount ?? "No data"))
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("Highest Bid")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 0)
                                                Text("$" + String(format: "%.2f", 37.85 + (Double(chapter?.amount ?? "0.0") ?? 0.0)))
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

struct NeumorphicDetailsView_Previews: PreviewProvider
{
    static var previews: some View
    {
        NeumorphicDetailsView(bookID: Reference().libraries[0].flavours[0].uniqueID).environmentObject(Reference())
    }
}
