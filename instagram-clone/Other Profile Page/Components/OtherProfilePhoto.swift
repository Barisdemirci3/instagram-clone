//
//  OtherProfilePhoto.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfilePhoto: View {
    var body: some View {
        Image("handsome")
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
    }
}

#Preview {
    OtherProfilePhoto()
}
