//
//  Profile.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct Profile: View {
    @Environment(\.colorScheme) var colorScheme
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
            
        }
       
    }
}

#Preview {
    Profile()
}
