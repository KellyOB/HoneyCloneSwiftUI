//
//  StoreCell.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 1/31/21.
//

import SwiftUI

struct StoreCell: View {
    
    var store: Store
    
    var body: some View {
        VStack {
            NavigationLink(destination: StoreDetailView()) {
                VStack {
                    Image(store.logo)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 78)
                        .padding(.bottom, 8)
                    
                    Text(store.name)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(Color(hex: 0x404040))
                        .padding(.bottom, 22)
                    
                    
                    Text("Shop Now")
                        .font(.custom("Helvetica", size: 16))
                        .foregroundColor(.white)
                        .padding([.top, .bottom], 7)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color(hex: 0x3a65f2))
                }
            }
            .padding(.top, 15)
            .padding(.bottom, 20)
            .padding([.leading, .trailing], 15)
        }
        .frame(width: 170)
        .border(Color(hex: 0xd3d3d3), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .cornerRadius(4.0)
    }
}

struct StoreCell_Previews: PreviewProvider {
    static var previews: some View {
        StoreCell(store: Store(id: 1, logo: "", name: "Apple"))
    }
}
