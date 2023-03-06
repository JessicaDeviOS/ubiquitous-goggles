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
            HStack {
                Button {
                    selectedTab = .home
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 40)
                            .foregroundColor(.green)
                            .opacity(0.3)
                        Image(systemName: "house.fill")
                            .foregroundColor(.green)
                    }
                }
                
                Button {
                    selectedTab = .calander
                } label: {
//                    ZStack {
//                        Circle()
//                            .frame(width: 40)
//                            .foregroundColor(.green)
//                            .opacity(0.3)
//                        Image(systemName: "calendar")
//                            .foregroundColor(.green)
//                    }
                    CustomTabBarButtonLabel(systemImageName: "calendar", isSelected: selectedTab == .calander)
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
            if isSelected {
                Circle()
                    .frame(width: 40)
                    .foregroundColor(.green)
                    .opacity(0.3)
            }
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
