//
//  StoreView.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import SwiftUI

struct StoreView: View {
    let stores: [Store]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Trending Stores")
                    .fontWeight(.medium)
                    .padding(.leading, 15)
                    .font(.custom("Avenir", size: 25))
                    .foregroundColor(Color(hex: 0x202020))
                
                Image(systemName: "chevron.forward")
                    .foregroundColor(Color(hex: 0x202020))
                    .font(.system(size: 12, weight: .regular))
            }
            .padding(.top, 13)
            .padding(.bottom, 15)
        
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(stores) { store in
                        StoreCell(store: store)
                    }
                }
                .padding([.leading, .bottom], 15)
            })
        }
        .padding(.top, 10)
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(stores: [Store(id: 1, logo: "", name: "Apple")])
    }
}
