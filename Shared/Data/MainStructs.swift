//
//  MainStructs.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import Foundation
import SwiftUI

// MARK: - Structures
struct Library {
    var title: String
    var books: [Book]
    
    var uniqueID = UUID()
}

struct Book {
    var image: String
    var name: String // Type
    var description: String // Description
    var numberOfUsers: Int // Balance
    var numberOfStories: Int // Number of transactions
    var color: Color?
    var chapters: [Chapter]
    
    var uniqueID = UUID()
}

struct Chapter {
    var icon: String // Category
    var role: String // Vendor
    var description: String // Category
    var date: String // Day
    var priority: String // Time
    var details: String // Description
    var color: Color?
    var interviewer: String? // Type
    var storyLocation: String? // Location
    var storyDate: String? // Month
    var storyTime: String? // Year
    
    var uniqueID = UUID()
}

struct ChapterDetail: Identifiable
{
    var id = UUID()
    var detailDescription: String
    var location: String
    
}
