//
//  ContentView.swift
//  MondayDribbble
//
//  Created by Jessica Mallian on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        ZStack {
            VStack {
                switch selectedTab {
                case .home:
                    NavigationStack {
                        HomeView()
                    }
                case .calander:
                    Text("calandar")
                case .bag:
                    Text("bag")
                case .book:
                    Text("book")
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
            }
            .padding(.bottom, 8)
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
