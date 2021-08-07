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
        
//        List {
//            ForEach(items) { item in
//                Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//            }
//            .onDelete(perform: deleteItems)
//        }
//        .toolbar {
//            #if os(iOS)
//            EditButton()
//            #endif
//
//            Button(action: addItem) {
//                Label("Add Item", systemImage: "plus")
//            }
//        }
    }


}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            .environmentObject(Reference()) //TODO: Temporary persistence (remove later)
        
       
    }
}
