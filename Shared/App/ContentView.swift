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
            List {
                ForEach(reference.libraries, id: \.uniqueID) { project in
                    NavigationLink(destination: MainView(projectID: project.uniqueID, projectName: project.title).environmentObject(reference)) {
                        HStack
                        {
                            Text(project.title)
                            Spacer()
                            Text(self.reference.totalBooks(for: project))
                        }
                    }
                }
            } // List
            .navigationTitle("Desserts")
        } // NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(Reference()) //TODO: Temporary persistence (remove later)
        
       
    }
}
