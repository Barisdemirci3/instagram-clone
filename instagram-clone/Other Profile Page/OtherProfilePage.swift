//
//  OtherProfilePage.swift
//  instagram-clone
//
//  Created by Barış Demirci on 26.01.2025.
//

import SwiftUI

struct OtherProfilePage: View {
    var body: some View {
        OtherProfileTopBar(nickName: "barisdemirciv")
        OtherProfileProfileInformations()
        OtherProfilePageOtherPeopleFollow()
        MainButton(buttonText: "Takip et")
        OtherProfilePrivacy()
    }
}

#Preview {
    OtherProfilePage()
}
