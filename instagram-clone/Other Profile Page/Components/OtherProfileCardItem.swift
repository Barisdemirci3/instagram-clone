import SwiftUI

struct OtherProfileCardItem: View {
    var body: some View {
        VStack {
            ZStack {
                // Arka Plan
                RoundedRectangle(cornerRadius: 20)
                    .fill(.secondary)
                    .opacity(0.23)
                    .frame(width: 200, height: 270)
                    .shadow(color: .gray.opacity(0.1), radius: 10, x: 0, y: 5) // Hafif gölge ekliyoruz

                VStack(spacing: 15) { // Öğeler arasındaki boşluğu düzenlemek için spacing
                    Image(systemName: "camera")
                        .frame(maxWidth: .infinity)
                        Image("handsome")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    Text("fatih")
                        .bold()
                    Text("fatihdvllcu")
                        .foregroundStyle(.secondary)
                    MainButton(buttonText: "Takip et")
                        
                }
            }
        }
    }
}

#Preview {
    OtherProfileCardItem()
}
