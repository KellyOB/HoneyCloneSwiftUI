//
//  Item.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import Foundation

struct Item: Identifiable {
    var id: Int
    var storeName: String
    var name: String
    var price: String
    var salePrice: String?
    var percentOff: String?
    var image: String
    
    static func loadItems(category: String) -> [Item] {
               
        switch category {
        case "Featured":
            return [
                Item(id: 1, storeName: "Target", name: "Madden NFL 21 - Xbox One/ Series X", price: "$58.99", salePrice: "$19.99", percentOff: "25% off", image: "madden21"),
                Item(id: 2, storeName: "Walmart", name: "ASUS TUF Gaming VG27VH1BR 27\" Curved", price: "$179.99", image: "visus"),
                Item(id: 3, storeName: "Walmart", name: "Dyson TP02 Pure Cool Link Connected Tower Purifier", price: "$299.99", salePrice: "$199.99", percentOff: "35% off", image: "dyson"),
                Item(id: 4, storeName: "Walmart", name: "Nerf Rival Artemis XVII 3000 (Red)", price: "$69.88", salePrice: "$29.97", image: "rival"),
                Item(id: 5, storeName: "Kohl's", name: "Sealy Elite Dream Lux Down- Alternative Pillow", price: "$39.99", salePrice: "$19.99", percentOff: "33% off", image: "pillow"),
                Item(id: 6, storeName: "Target", name: "Nintendo Switch Game Traveler Deluxe System Case", price: "$39.99", salePrice: "$20.99", percentOff: "42% off", image: "game")
            ]
            
        case "Stock Up - Our Top Deals from Sam's Club":
            return [
                Item(id: 1, storeName: "Target", name: "Nintendo Switch Game Traveler Deluxe System Case", price: "$39.99", salePrice: "$20.99", percentOff: "42% off", image: "game"),
                Item(id: 2, storeName: "Kohl's", name: "Sealy Elite Dream Lux Down- Alternative Pillow", price: "$39.99", salePrice: "$19.99", percentOff: "33% off", image: "pillow"),Item(id: 1, storeName: "Walmart", name: "ASUS TUF Gaming VG27VH1BR 27\" Curved", price: "$179.99", image: "visus"),
                Item(id: 3, storeName: "Target", name: "Madden NFL 21 - Xbox One/ Series X", price: "$58.99", salePrice: "$19.99", percentOff: "25% off", image: "madden21"),
                Item(id: 4, storeName: "Walmart", name: "Dyson TP02 Pure Cool Link Connected Tower Purifier", price: "$299.99", salePrice: "$199.99", percentOff: "35% off", image: "dyson"),
                Item(id: 5, storeName: "Walmart", name: "Nerf Rival Artemis XVII 3000 (Red)", price: "$69.88", salePrice: "$29.97", image: "rival")    
            ]

           case "Upgrade Everything - Our Best Deals from JCPenney":
            return [
                Item(id: 1, storeName: "Walmart", name: "Dyson TP02 Pure Cool Link Connected Tower Purifier", price: "$299.99", salePrice: "$199.99", percentOff: "35% off", image: "dyson"),
                Item(id: 4, storeName: "Walmart", name: "Nerf Rival Artemis XVII 3000 (Red)", price: "$69.88", salePrice: "$29.97", image: "rival"),
                Item(id: 2, storeName: "Walmart", name: "ASUS TUF Gaming VG27VH1BR 27\" Curved", price: "$179.99", image: "visus"),
                Item(id: 3, storeName: "Target", name: "Madden NFL 21 - Xbox One/ Series X", price: "$58.99", salePrice: "$19.99", percentOff: "25% off", image: "madden21"),
                Item(id: 4, storeName: "Kohl's", name: "Sealy Elite Dream Lux Down- Alternative Pillow", price: "$39.99", salePrice: "$19.99", percentOff: "33% off", image: "pillow"),
                Item(id: 5, storeName: "Target", name: "Nintendo Switch Game Traveler Deluxe System Case", price: "$39.99", salePrice: "$20.99", percentOff: "42% off", image: "game")
            ]

        default:
            return [
                Item(id: 1, storeName: "Walmart", name: "ASUS TUF Gaming VG27VH1BR 27\" Curved", price: "$179.99", image: "visus"),
                Item(id: 2, storeName: "Target", name: "Madden NFL 21 - Xbox One/ Series X", price: "$58.99", salePrice: "$19.99", percentOff: "25% off", image: "madden21"),
                Item(id: 3, storeName: "Walmart", name: "Dyson TP02 Pure Cool Link Connected Tower Purifier", price: "$299.99", salePrice: "$199.99", percentOff: "35% off", image: "dyson"),
                Item(id: 4, storeName: "Walmart", name: "Nerf Rival Artemis XVII 3000 (Red)", price: "$69.88", salePrice: "$29.97", image: "rival"),
                Item(id: 5, storeName: "Kohl's", name: "Sealy Elite Dream Lux Down- Alternative Pillow", price: "$39.99", salePrice: "$19.99", percentOff: "33% off", image: "pillow"),
                Item(id: 6, storeName: "Target", name: "Nintendo Switch Game Traveler Deluxe System Case", price: "$39.99", salePrice: "$20.99", percentOff: "42% off", image: "game")
            ]
        }
    }
}
