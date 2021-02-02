//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct ItemCell: View {
    
    var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemDetailView()) {
            VStack(alignment: .leading)  {
                ZStack(alignment: .topLeading) {
                    Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .padding(11)
                    .frame(width: 196)

                    if item.percentOff != nil {
                        Text(item.percentOff!)
                            .fontWeight(.medium)
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(.white)
                            .frame(width: 58, height: 26, alignment: .center)
                            .background(Color(hex: 0xcc4242))
                            .cornerRadius(3.0)
                            .padding(.top, 8)
                            .padding(.leading, 0)
                    }      
                }
                .frame(width: 220, height: 220)
                .background(Color(hex: 0xf7f7f7))
                .cornerRadius(4.0)
                
                VStack(alignment: .leading) {
                    Text(item.storeName)
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x777777))
                    
                    Text(item.name)
                        .font(.custom("Avenir", size: 17))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x424242))
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    if item.salePrice != nil {
                        Text(item.price)
                            .fontWeight(.medium)
                            .font(.custom("Avenir", size: 15))
                            .strikethrough(true, color: Color(hex: 0x9d9d9d))
                            .foregroundColor(Color(hex: 0x9d9d9d))
                    } else {
                        Text(item.price)
                            .font(.custom("Avenir", size: 17))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x262626))
                    }
                    
                    if item.salePrice != nil {
                        Text(item.salePrice!)
                            .font(.custom("Avenir", size: 17))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x262626))
                    }
                }
                .padding(.leading, 5)
                .padding(.trailing, 10)
            }
            .frame(width: 220)
            .font(.custom("Avenir", size: 15))
            .padding(.top, 0)            
        }
    }
}
