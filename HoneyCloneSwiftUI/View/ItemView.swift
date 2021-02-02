//
//  CategoryView.swift
//  OrderUp
//
//  Created by Kelly O'Brien on 9/5/20.
//  Copyright © 2020 Kismet Development. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    
    let category: Category
    
    var body: some View {
        let items = Item.loadItems(category: category.name)
        VStack(alignment: .leading) {
            Text("\(category.name) >")
                .fontWeight(.bold)
                .padding(.top, 14)
                .padding(.bottom, 7)
                .padding(.leading, 15)
                .lineLimit(2)
                .font(.custom("Avenir", size: 25))
                .foregroundColor(Color(hex: 0x333333))
                .frame(width: 360)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(items) { item in
                        ItemCell(item: item)
                    }
                }
                .padding([.leading, .bottom], 15)
            })
        }
        .padding(.top, 10)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(category: Category(id: 1, name: "Featured"))
    }
}
