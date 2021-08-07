//
//  ProjectsView.swift
//  UserStoryMap
//
//  Created by Anya Traille on 20/1/21.
//

import SwiftUI

struct NewViewOne: View {
    
    @EnvironmentObject private var reference: Reference
    @State private var newItem: String?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(reference.projects, id: \.id) { project in
                    NavigationLink(destination: MainView(projectID: project.id, projectName: project.title).environmentObject(reference)) {
                        HStack
                        {
                            Text(project.title)
                            Spacer()
                            Text(self.reference.totalThemes(for: project))
                        }
                    }
                }
            } // List
            .navigationTitle("Projects")
        } // NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewViewOne_Previews: PreviewProvider {
    static var previews: some View {
        NewViewOne()
            .environmentObject(Reference())
    }
}
