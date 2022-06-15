//
//  MainStructs.swift
//  LaminarModes
//
//  Created by Anya Traille on 7/8/21.
//

import Foundation
import SwiftUI

// MARK: - Main Structs
struct Market {
    var name: String
    var flavours: [Flavour]
    var uniqueID = UUID()
}

struct Flavour {
    var image: String
    var name: String
    var description: String
    var numberOfUsers: Int
    var numberOfStories: Int
    var color: Color?
    var desserts: [Dessert]
    var uniqueID = UUID()
}

struct Dessert {
    var image: String
    var type: String
    var description: String
    var date: String
    var priority: String
    var details: String
    var color: Color?
    var item: String?
    var amount: String?
    var dateOfCreation: String?
    var itemID: String?
    var uniqueID = UUID()
}

struct Detail: Identifiable
{
    var id = UUID()
    var detailDescription: String
    var location: String
}
