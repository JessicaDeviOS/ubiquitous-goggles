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
        VStack {
            switch selectedTab {
            case .home:
                Text("home view")
            case .calander:
                Text("calandar view")
            case .bag:
                Text("bag view")
            case .book:
                Text("book view")
            }
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
