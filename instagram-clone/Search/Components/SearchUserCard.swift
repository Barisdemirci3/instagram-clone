//
//  SearchUserCard.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct SearchUserCard: View {
    var body: some View {
        VStack{
            ZStack{
                Image("handsome")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                Image(systemName: "camera.fill")
                    .offset(x:180, y:-85)
            }
            
        }
    }
}

#Preview {
    SearchUserCard()
}
