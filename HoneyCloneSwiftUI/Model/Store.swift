//
//  Store.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import SwiftUI

struct Store: Identifiable {
    var id: Int
    var logo: String
    var name: String
        
    static func loadStores() -> [Store] {
        return [Store(id: 1, logo: "appleLogo", name: "Apple"),
                Store(id: 2, logo: "ultaLogo", name: "ULTA"),
                Store(id: 3, logo: "macys", name: "Macy's"),
                Store(id: 4, logo: "michaels", name: "Michaels"),
                Store(id: 5, logo: "jcpenney", name: "JCPenney"),
                Store(id: 6, logo: "staples", name: "Staples")
        ]
    }
}
