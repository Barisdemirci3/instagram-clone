//
//  Posts.swift
//  deneme2
//
//  Created by Barış Demirci on 23.01.2025.
//

import SwiftUI

struct Posts: View {
    @State var handleLike : Bool = false
    var body: some View {
        VStack{
            HStack{
                Image("handsome")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Barış Demirci")
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 12)
            Image("handsome")
                .resizable()
                .frame(height: 400)
            HStack{
                Image(systemName: handleLike == true ? "heart.fill" : "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .bold()
                    .onTapGesture {
                        handleLike = handleLike == true ? false : true
                    }
                Text("1.23M ")
                Image(systemName: "bubble")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .bold()
                Text("1.14M ")
                Image(systemName: "paperplane")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .bold()
                Text("34")
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 20, height: 25)
                    .bold()
            }
            .padding(.horizontal, 10)
            HStack{
                Image("handsome")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                Text("barisdemirci")
                    .bold() +
                Text(" ve ") +
                Text("diğer kişiler")
                    .bold() +
                Text(" beğendi")
                Spacer()
            }.padding(.horizontal, 10)
            HStack{
                Text("baris demirci")
                    .bold()
        
                    Text("This is test text this is test text this is test text")
                        .lineLimit(1)
                        .truncationMode(Text.TruncationMode.tail)
                Spacer()
            }
            .padding(.horizontal, 10)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    Posts()
}
