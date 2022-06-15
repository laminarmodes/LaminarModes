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
    @EnvironmentObject private var reference: Reference
    @Environment(\.presentationMode) var presentationMode
    var bookID: UUID
    var chapter: Dessert?
    var details: String?
    var closeButton = true
    let screenWidth = UIScreen.main.bounds.size.width
    var textColors: Color = Color(hue: 0/360, saturation: 0, brightness: 0.30)
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Image(chapter?.image ?? "frozen-sorbet-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity)
                    .padding([.leading, .trailing], 60)
                    .padding([.top], 24)
                    .padding(.bottom, 10)
                
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
                                    .foregroundColor(textColors)
                                
                                
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
                                                    Text("Category")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                
                                                Spacer(minLength: 20)
                                                Text(reference.findBookById(inputThemeId: bookID).name ?? "No data")
                                                    .multilineTextAlignment(.trailing)
                                            }
                                            
                                            Divider().padding(.vertical,2)
                                            HStack
                                            {
                                                Group {
                                                    Image(systemName: "info.circle")
                                                    Text("ID")
                                                    
                                                }
                                                .foregroundColor(chapter?.color ?? Color.black)
                                                .font(Font.system(.body).bold())
                                                Spacer(minLength: 0)
                                                Text(chapter?.itemID ?? "No data")
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
                                                Spacer(minLength: 20)
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
                                                Text("$"+(chapter?.amount ?? "No data"))
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
                                    .foregroundColor(textColors)
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
        DetailsView(bookID: Reference().libraries[0].books.last!.uniqueID, chapter: Reference().libraries[0].books.last!.chapters.last!).environmentObject(Reference())
    }
}

//                BookHeaderLarge(book: reference.findBookById(inputThemeId: bookID)).environmentObject(reference)
//                    .zIndex(1)
