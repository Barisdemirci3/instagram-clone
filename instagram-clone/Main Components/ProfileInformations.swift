//
//  Profileİnformations.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct ProfileInformations: View {
    var myText: String = ""
    var myData: Int = 0
    var body: some View {
        VStack(alignment: .leading){
            Text(String(myData))
                .bold()
            Text(myText)
        }
    }
}

#Preview {
    ProfileInformations(myText: "Deneme", myData: 3)
}
