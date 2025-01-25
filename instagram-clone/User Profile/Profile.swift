//
//  Profile.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct Profile: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedTab = 0
    let columns: [GridItem] = [
        GridItem(.flexible()), // İlk kolon
        GridItem(.flexible()), // İkinci kolon
        GridItem(.flexible())  // Üçüncü kolon
    ]
    var body: some View {
        VStack{
            ProfileTopBar()
            HStack {
                ProfileInfo()
                VStack{
                    HStack{
                        Text("Barış Demirci")
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .bold()
                        Spacer()
                    }
                    
                    HStack{
                        ProfileInformations(myText: "gönderi", myData: 10)
                        ProfileInformations(myText: "takipçi", myData: 10)
                        ProfileInformations(myText: "takip", myData: 10)
                        Spacer()
                    }
                    .padding(.horizontal , 10)
                }
            } .padding()
            HStack{
                Text("Deneme")
                    .padding(.horizontal)
                Spacer()
            }
            HStack{
                ProfileButton(buttonText: "Düzenle")
                ProfileButton(buttonText: "Profili Paylaş")
                Spacer()
                ProfileButton(buttonText: "person.badge.plus", buttonType: 1)
                
            }
            .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(1..<100){_ in
                            ProfileFavorites(profileFavoriteName: "Alev")
                                .padding(.horizontal, 10)
                                .padding(.vertical, 20)
                        }
                    }
                }
            HStack {
                TabText(title: "circle.grid.3x3",isSelected: selectedTab == 0, isSystemName: true) {
                    selectedTab = 0
                }
                TabText(title: "photo.on.rectangle.angled",isSelected: selectedTab == 1, isSystemName: true) {
                    selectedTab = 1
                }
                TabText(title: "person.crop.circle",isSelected: selectedTab == 2, isSystemName: true) {
                    selectedTab = 2
                }
            }
            .padding(.horizontal)
            
            // İçerik Alanı
            TabView(selection: $selectedTab) {
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(1..<100){ _ in
                            Image("handsome")
                                .resizable()
                                .frame(width: 137, height: 240)
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        }
                    }
                }
                    .tag(0)
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(1..<100){ _ in
                            Image("handsome")
                                .resizable()
                                .frame(width: 137, height: 240)
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        }
                    }
                }
                    .tag(1)
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columns, spacing: 0){
                        ForEach(1..<100){ _ in
                            Image("handsome")
                                .resizable()
                                .frame(width: 137, height: 240)
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                        }
                    }
                }
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
       
    }
}

#Preview {
    Profile()
}
