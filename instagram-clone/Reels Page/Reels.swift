//
//  Reels.swift
//  instagram-clone
//
//  Created by Barış Demirci on 25.01.2025.
//

import SwiftUI

struct Reels: View {
    var body: some View {
        ZStack {
            // Fotoğraf
            Image("handsome")
                .resizable()
                .scaledToFill()
                .frame(height: 300) // Fotoğrafın yüksekliğini belirleyin
                .clipped()

            // Üst Bar (Fotoğrafın önünde olacak)
            VStack {
                ReelsPageTopBar() // Bu üst barı fotoğrafın üstüne yerleştiriyor
                Spacer() // Üst barın fotoğrafın üzerinde durmasını sağlar
            }
            .padding() // Üst barın etrafına biraz boşluk ekleyebilirsiniz
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Ekranın tamamını
        .ignoresSafeArea()
    }
        
}

#Preview {
    Reels()
}
