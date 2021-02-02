//
//  HomeView.swift
//  HoneyCloneSwiftUI
//
//  Created by KellyO on 2/2/21.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText : String = ""
    let categories = Category.loadCategories()
    let stores = Store.loadStores()
    
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                VStack {
                    SearchBar(text: $searchText)
                        .padding(.bottom, -7)
                    ScrollView {
                        VStack {
                            ZStack(alignment: .leading) {
                                Image("dailyDealsBG")
                                    .resizable()
                                    .edgesIgnoringSafeArea(.all)
                                    .scaledToFit()
                                    .frame(width: geo.size.width, height: 120, alignment: .bottomTrailing)
                                    .overlay(TintOverlay().opacity(0.35))
                                
                                HStack {
                                    Text("Daily Deals")
                                        .fontWeight(.medium)
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                        .padding(.leading, 20)
                                    Image(systemName: "chevron.forward")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                }
                            }.padding(.bottom, 15)
                            
                            VStack {
                                HStack {
                                    FeaturedView()
                                        .background(Color.white)
                                }
                                HStack {
                                    StoreView(stores: self.stores)
                                        .background(Color.white)
                                }
                                
                                VStack {
                                    ForEach(categories) { category in
                                        ItemView(category: category)
                                            .background(Color.white)
                                    }
                                }
                            }
                            .background(Color(hex: 0xededed))
                        }
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
