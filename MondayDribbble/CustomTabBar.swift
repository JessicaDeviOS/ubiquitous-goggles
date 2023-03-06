//
//  CustomTabBar.swift
//  MondayDribbble
//
//  Created by Jessica Mallian on 3/6/23.
//

import SwiftUI

enum Tab {
    case home
    case calander
    case bag
    case book
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 75)
                .cornerRadius(40)
                .padding(50)
                .foregroundColor(.white)
                .shadow(radius: 10)
            HStack(spacing: 20) {
                Button {
                    selectedTab = .home
                } label: {
                    CustomTabBarButtonLabel(systemImageName: "house.fill", isSelected: selectedTab == .home)
                }
                
                Button {
                    selectedTab = .calander
                } label: {
                    CustomTabBarButtonLabel(systemImageName: "calendar", isSelected: selectedTab == .calander)
                }
                
                Button {
                    selectedTab = .bag
                } label: {
                    CustomTabBarButtonLabel(systemImageName: "bag.fill", isSelected: selectedTab == .bag)
                }
                
                Button {
                    selectedTab = .book
                } label: {
                    CustomTabBarButtonLabel(systemImageName: "book.fill", isSelected: selectedTab == .book)
                }



            }
        }
    }
}

struct CustomTabBarButtonLabel: View {
    let systemImageName: String
    let isSelected: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 40)
                .foregroundColor(isSelected ? .green : .white) // TODO: .white depends on if app is in color mode or not
                .opacity(0.3)
            Image(systemName: systemImageName)
                .foregroundColor(isSelected ? .green : .gray)
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.home))
    }
}
