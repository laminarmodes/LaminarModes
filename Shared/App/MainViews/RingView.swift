//
//  RingView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 19/1/21.
//

import SwiftUI

struct RingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
//    var color1 = "plasma-2"
//    var color2 = "plasma-7"
    
//    var color1 =
//    var color2 = "viridis-7"
    
//    var color1 = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
//    var color2 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//    var color3 = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    
//    var color1 = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
//    var color2 = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//    var color3 = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    
  
//    var color1 = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
//    var color2 = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
//    var color3 = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
//
//        var color1 = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
//        var color2 = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
//        var color3 = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    
//    var color1 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//    var color2 = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//    var color3 = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//
//    var color1 = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//    var color2 = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
//    var color3 = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
//

    @EnvironmentObject private var reference: Reference
    @State var projectID: Int
    
    
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
            
            Text("new\n item")
                .font(.system(size: 7 * multiplier))
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 200)
                
                
                
                // remove later
                .foregroundColor(Color.black)
                
                
                
                
                
                
                
                
//                .background(
//                    ZStack {
//                        LinearGradient(gradient: Gradient(colors: [Color(press ? #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                        Circle().stroke(Color.clear, lineWidth: 10)
//                            .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 3, x: -5, y: -5)
//
//                        Circle().stroke(Color.clear, lineWidth: 10)
//                            .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 3, x: 3, y: 3)
//                    }
//                )
//                    .clipShape(Circle())
//                    .shadow(color: Color(press ? #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 20, x: -20, y: -20)
//                    .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
//                    .scaleEffect(tap ? 1.2 : 1)
//                    .gesture(
//                        LongPressGesture().onChanged { value in
//                            self.tap = true
//                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                                self.tap = false
//                            }
//                        }
//                        .onEnded { value in
//                            self.press.toggle()
//                        }
//                )
                // remove later
                
                
                
                
                
                
                
//                .background(Color(color3))
//                .foregroundColor(Color.white)
//                .clipShape(Circle())
                
//                .shadow(color: Color(color3).opacity(0.3), radius: 10, x: 0, y: 10)
//
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
        // remove later
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
//        .edgesIgnoringSafeArea(.all)
        // remove later
    }
    
    
    
    @ViewBuilder
    var storyForm: some View
    {
        if addingStory == true
        {
            ZStack(alignment: .topTrailing) {
                
                //StoryMode()

                VStack(alignment: .leading) {
                    
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
        RingView(projectID: 1, show: .constant(true)) // necessary only when you have a preview
    }
}


