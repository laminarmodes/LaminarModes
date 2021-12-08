//
//  RingView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct RingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var color1 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    var color2 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    
    @EnvironmentObject private var reference: Reference
    @State var projectID: UUID
    
    var width: CGFloat = 300
    var height: CGFloat = 300
    var percent: CGFloat = 88
    
    @State var addingStory = false
    @Binding var show: Bool // if we want to use this from outside
    
    @Environment(\.presentationMode) var presentationMode
    @State var isFocused = false
    @State var roleInput = ""
    @State var descriptionInpt = ""
    @State var date = Date()
    @State var priorityInput = ""
    @State var detailsInput = ""
    
    @State var tap = false
    @State var press = false
    
    var body: some View {
        let multiplier = width / 44
        let progress = 1 - percent / 100
        
        return ZStack { // if declaring a variable inside the body must return the parent container
            // bacckground circle
            
            Color("off-white")
                .edgesIgnoringSafeArea(.all)
            
            
            storyForm
                .background(VisualEffectBlur().edgesIgnoringSafeArea(.all))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5 * multiplier))
                .frame(width: width, height: height)
            
            Circle() // linecap only visible when you have a dashed linse (the cap of the lines)
            // progress ring
                .trim(from: show ? progress : 1, to: 1)
            // circle properties
                .stroke(LinearGradient(gradient: Gradient(colors: [(colorScheme == .dark ? Colors().pLight[2] : Colors().pDark[2]), (colorScheme == .dark ? Colors().pLight[7] : Colors().pDark[7])]), startPoint: .topTrailing, endPoint: .bottomLeading),
                        style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0)
                )
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .frame(width: width, height: height)
                .shadow(color: (colorScheme == .dark ? Colors().pLight[2] : Colors().pDark[2]).opacity(0.3), radius: 3 * multiplier, x: 0, y: 3 * multiplier)
            
            Text("new\n activity")
                .font(.system(size: 7 * multiplier))
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 200)
                .foregroundColor(Color.black)
                .padding(30)
                .background(
                    Circle()
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                )
                .onTapGesture {
                    self.show.toggle()
                    addingStory = true
                    
                }
        }
    }
    
    @ViewBuilder
    var storyForm: some View
    {
        if addingStory == true
        {
            ZStack(alignment: .topTrailing)
            {
                VStack(alignment: .leading)
                {
                    Group {
                        Text("Role")
                            .font(.headline)
                            .padding(.leading)
                        TextField("Enter role", text: $roleInput)
                            .font(.subheadline)
                            .padding(.leading)
                            .frame(height: 44)
                            .onTapGesture {
                                self.isFocused = true
                            }
                        
                        Divider().padding(.leading)
                        
                        Text("Description")
                            .font(.headline)
                            .padding(.leading)
                        TextField("Enter description", text: $descriptionInpt)
                            .font(.subheadline)
                            .padding(.leading)
                            .frame(height: 44)
                            .onTapGesture {
                                self.isFocused = true
                            }
                        
                        Divider().padding(.leading)
                    }
                    
                    Group {
                        Text("Details")
                            .font(.headline)
                            .padding(.leading)
                        TextField("Details", text: $detailsInput)
                            .font(.subheadline)
                            .padding(.leading)
                            .frame(height: 44)
                            .onTapGesture {
                                self.isFocused = true
                            }
                        
                        Divider().padding(.leading)
                        
                        Text("Priority")
                            .font(.headline)
                            .padding(.leading)
                        TextField("Priority level", text: $priorityInput)
                            .font(.subheadline)
                            .padding(.leading)
                            .frame(height: 44)
                            .onTapGesture {
                                self.isFocused = true
                            }
                        
                        Divider().padding(.leading)
                        
                    }
                    
                    Group {
                        //Spacer()
                        Button(action: {
                            
                            //TO DO: Save data
                            
                            addingStory = false
                            roleInput = ""
                            descriptionInpt = ""
                            priorityInput = ""
                            detailsInput = ""
                            //detailsInput.detailDescription = ""
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            Text("Save")
                                .font(.headline)
                                .padding(.leading)
                        })
                    }
                }
                .padding()
                .frame(maxWidth: 300)
                .frame(maxHeight: 500)
                .clipShape(RoundedRectangle(cornerRadius: 70))
                
                Button(action: {
                    addingStory = false
                    roleInput = ""
                }, label: {
                    CloseButton()
                })
                    .padding(.all, 10)
            }
            .zIndex(2)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(projectID: Reference().libraries[0].uniqueID, show: .constant(true)) // necessary only when you have a preview
    }
}


