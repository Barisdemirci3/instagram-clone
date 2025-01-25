//
//  MainButton.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct MainButton: View {
    @State var buttonText : String
    var body: some View {
        VStack{
            Text("\(buttonText)")
                .bold()
                .font(.system(size: 17, weight: .bold, design: .rounded))
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background(RoundedRectangle(cornerRadius: 15).fill(Color("mainbuttoncolor")).opacity(0.9))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(style: StrokeStyle(lineWidth: 0)))
        }
        
    }
}

#Preview {
    MainButton(buttonText: "Takip et")
}
