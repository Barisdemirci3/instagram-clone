//
//  ProfileSegmentedPicker.swift
//  instagram-clone
//
//  Created by Barış Demirci on 25.01.2025.
//

import SwiftUI

struct ProfileSegmentedPicker: View {
    @State private var selectedTab = 0
       
       var body: some View {
           VStack {
               // Özelleştirilmiş Sekme Çubuğu
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
                   Text("Gönderiler Sayfası")
                       .tag(0)
                   Text("Reels Sayfası")
                       .tag(1)
                   Text("Etiketlenenler Sayfası")
                       .tag(2)
               }
               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
           }
       }
   }

   // Özelleştirilmiş Sekme Butonu
struct TabText: View {
    @Environment(\.colorScheme) var colorscheme
    let title: String
    let isSelected: Bool
    let isSystemName: Bool
    let action: () -> Void

    
    var body: some View {
        VStack {
            if isSystemName == true{
                    Image(systemName: isSelected ? title+".fill" : title)
                        .resizable()
                        .fontWeight(isSelected ? .bold : .regular)
                        .onTapGesture(perform: action) // Text'e dokunma eylemi
                        .animation(.easeInOut, value: isSelected)
                        .frame(width: 24, height: 24)
                        
                
                // Alt Çizgi
                Rectangle()
                    .fill(isSelected ? colorscheme == .dark ? Color.white : Color.black : Color.clear)
                    .frame(height: 1)
                    .animation(.easeIn, value: isSelected)
            
            }
            else{
                Text(title)
                    .fontWeight(isSelected ? .bold : .regular)
                    .foregroundColor(isSelected ? .blue : .gray)
                    .onTapGesture(perform: action) // Text'e dokunma eylemi
                    .animation(.easeInOut, value: isSelected)
                
                // Alt Çizgi
                Rectangle()
                    .fill(isSelected ? colorscheme == .dark ? Color.white : Color.black : Color.clear)
                    .frame(height: 2)
                    .animation(.easeIn, value: isSelected)
            }
        }
    }
}

#Preview {
    ProfileSegmentedPicker()
}
