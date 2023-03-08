//
//  HomeView.swift
//  MondayDribbble
//
//  Created by Jessica Mallian on 3/6/23.
//

import SwiftUI

enum PlantToggle: String {
    case newPlant = "New Plant"
    case harvested = "Harvested"
}

struct PlantViewInfo {
    let imageName: String
    let percent: Double
    let title: String
    let subtitle: String
}

struct HomeView: View {
    @State var plantToggle: PlantToggle = .harvested
    // TODO: array of PlantViewInfo
    let data = ["Pink Gerbera", "Nest Fern", "Young Banana", "Dahila", "Something I can't see", "Cats <3"]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 75)
                .cornerRadius(40)
                .foregroundColor(.white)
                .shadow(radius: 10)
                .padding()
            HStack {
                Button {
                    plantToggle = .newPlant
                } label: {
                    Text("New Plant")
                        .foregroundColor(plantToggle == .newPlant ? .green : .gray)
                }
                Button {
                    plantToggle = .harvested
                } label: {
                    Text("Harvested")
                        .foregroundColor(plantToggle == .harvested ? .green : .gray)
                }
            }
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        NavigationLink {
                            Text("where do I go?...")
                        } label: {
                            VStack {
                                ZStack {
                                    Rectangle()
                                        .cornerRadius(30)
                                        .foregroundColor(.gray)
                                        .opacity(0.1)
                                        .frame(width: 150, height: 150)
                                    Image(systemName: "archivebox.circle")
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                        .foregroundColor(.pink)
                                }
                                .overlay(alignment: .bottomTrailing) {
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .padding(8)
                                }
                                // need to align to edges of Rectangle?
                                VStack(alignment: .leading) {
                                    Text(item)
                                        .foregroundColor(.black)
                                    Text("subtitle")
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }
                            }
                        }

                    }
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
