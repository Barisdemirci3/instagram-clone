import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) { // TopBar ve ScrollView'i bir VStack içine aldık
            TopBar() // Üst bar
                .padding(.top, 20) // Üstten boşluk eklemek isteyebilirsiniz

            // Horizontal ScrollView - Story'ler
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) { // Aralarındaki boşluğu artırdık
                    SelfUserStory()
                
                    ForEach(0..<100, id: \.self) { _ in
                        Storys(name: "Barış")
                            .padding(6)
                    }
                }
            }

            // Vertical ScrollView - Post'lar
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 16) { // Aralarındaki boşluğu artırdık
                    ForEach(0..<100) { _ in
                        Posts()
                            .padding(.bottom, 10) // Post'lar arasında boşluk bırak
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
