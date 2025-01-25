//
//  SearchPage.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct SearchPage: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 0), // İlk kolon
        GridItem(.flexible(),spacing: 0), // İkinci kolon
        GridItem(.flexible(),spacing: 0)  // Üçüncü kolon
    ]
    var body: some View {
        VStack{
            SearchPageTopBar()
            ScrollView(.vertical){
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0..<100) { _ in
                        SearchUserCard()
                            .clipped()
                            .scaledToFit()
                    }
                }
                
            }
        }
    }
}

#Preview {
    SearchPage()
}
