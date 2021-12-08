//
//  Analytics.swift
//  LaminarModes
//
//  Created by Anya Traille on 8/8/21.
//

import SwiftUI

struct UITrendsView: View {
    
    @EnvironmentObject private var reference: Reference
    @State var projectID: UUID
    
    let screenWidth = UIScreen.main.bounds.size.width
    var columnWidth: CGFloat = 100.0
    
    var body: some View {
        List
        {

            NavigationLink(destination: NeumorphicView()) {
                HStack
                {
                    Text("Neumorphism")
                    Spacer()
                    Text("See sample")
                }
            }
            NavigationLink(destination: GlassmorphicView()) {
                HStack
                {
                    Text("Glassmorphism")
                    Spacer()
                    Text("See sample")
                }
            }
            NavigationLink(destination: GradientView()) {
                HStack
                {
                    Text("Gradient")
                    Spacer()
                    Text("See sample")
                }
            }
            
        } // ScrollView
        .onAppear() {
            DispatchQueue.main.async {
                self.reference.referenceProjectID = self.projectID
            }
        }
    }
}

struct UITrendsView_Previews: PreviewProvider {
    static var previews: some View {
        UITrendsView(projectID: Reference().libraries[0].uniqueID).environmentObject(Reference())
    }
}
