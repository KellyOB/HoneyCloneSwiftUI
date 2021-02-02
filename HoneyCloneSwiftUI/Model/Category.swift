//
//  Home.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import Foundation

struct Category: Identifiable {
    var id: Int
    var name: String
    
    static func loadCategories() -> [Category] {
        return [
            Category(id: 1, name: "Stock Up - Our Top Deals from Sam's Club"),
            Category(id: 2, name: "Upgrade Everything - Our Best Deals from JCPenney"),
            Category(id: 3, name: "Trending in Computers & Tablets"),
        ]
    }
}
