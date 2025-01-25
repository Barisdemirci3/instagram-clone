//
//  ProfileButton.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct ProfileButton: View {
    @Environment(\.colorScheme) var colorScheme
    var buttonText : String = ""
    var buttonType : Int = 0
    var body: some View {
        Button(action: {
            // Butona tıklanma aksiyonları buraya gelecek
        }) {
            if buttonType == 0 {
                Text(buttonText)
                .font(.system(size: 16)) // Yazı fontu
                .fontWeight(.semibold) // Font kalınlık
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black) // Yazı rengi
                .padding(.vertical, 12) // Dikey padding (yukarı ve aşağı)
                .padding(.horizontal, 20) // Yatay padding (soldan sağa)
                .background(
                    RoundedRectangle(cornerRadius: 10) // Kenarları yuvarlatmak için
                        .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 2) // Mavi kenar çizgisi
                )
                
            }
            else if buttonType == 1 {
                Image(systemName: buttonText)
                .font(.system(size: 16)) // Yazı fontu
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black) // Yazı rengi
                .padding(.vertical, 12) // Dikey padding (yukarı ve aşağı)
                .padding(.horizontal, 20) // Yatay padding (soldan sağa)
                .background(
                    RoundedRectangle(cornerRadius: 10) // Kenarları yuvarlatmak için
                        .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 2) // Mavi kenar çizgisi
                )
            }
        }
    }
}

#Preview {
    ProfileButton()
}
