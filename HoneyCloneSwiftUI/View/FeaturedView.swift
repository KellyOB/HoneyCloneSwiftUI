//
//  FeaturedView.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 2/1/21.
//

import SwiftUI

struct FeaturedView: View {
    let items = Item.loadItems(category:"Featured")
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .top, spacing: 10) {
                ForEach(items) { item in
                    ItemCell(item: item)
                }
            }
            .padding(.leading, 15)
            .padding(.bottom, 13)
        })
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
