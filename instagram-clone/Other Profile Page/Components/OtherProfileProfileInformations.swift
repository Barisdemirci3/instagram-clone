//
//  OtherProfileProfileInformations.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfileProfileInformations: View {
    var body: some View {
        VStack {
            Text("Barış Demirci")
            
            HStack {
                VStack {
                    OtherProfilePhoto()
                }
                Spacer()
                ProfileInformations(myText: "gönderi", myData: 1)
                ProfileInformations(myText: "takipçi", myData: 258)
                ProfileInformations(myText: "takip", myData: 256)
            }
            Text("Açıklama buraya buraya buraya")
                .frame(maxWidth: .infinity, alignment: .leading) // Sol tarafa
        }
        .padding()
    }
}

#Preview {
    OtherProfileProfileInformations()
}
