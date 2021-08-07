//
//  MainStructs.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import Foundation
import SwiftUI

// MARK: - Your structures you said you cannot modify.
struct Project {
    var id: Int
    var title: String
    var themes: [iTheme]
}

struct iTheme {
    var id: Int
    var image: String
    var name: String
    var description: String
    var numberOfUsers: Int
    var numberOfStories: Int
    var color: Color?
    
    var stories: [iStory]
    var projectId: Int
}

struct iStory {
    var id: Int
    var icon: String
    var role: String
    var description: String
    var date: String
    var priority: String
    var details: String
    var color: Color?
    
    var interviewer: String?
    var storyLocation: String?
    var storyDate: String?
    var storyTime: String?
    
    
    
    var themeId: Int
}

struct StoryDetail: Identifiable
{
    var id = UUID()
    var detailDescription: String
    var location: String
    
}

