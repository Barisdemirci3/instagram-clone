//
//  ProfileTopBar.swift
//  deneme2
//
//  Created by Barış Demirci on 24.01.2025.
//

import SwiftUI

struct ProfileTopBar: View {
    var body: some View {
        HStack{
            Image(systemName: "lock")
            Text("barisdemirciv")
                .bold()
                .font(.system(size: 28))
            Image(systemName: "chevron.down")
            Circle()
                .fill(Color.red)
                .frame(width: 8, height: 8)
            Spacer()
            Image(systemName: "plus.app")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.horizontal, 4)
            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 20, height: 20)
            
        }
        .padding()
    }
}

#Preview {
    ProfileTopBar()
}
