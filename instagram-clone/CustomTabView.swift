import SwiftUI
struct CustomTabView: View {
    @State private var selectedTab: Int? = nil
    
    var body: some View {
        VStack {
            if selectedTab == 0 || selectedTab == nil {
                ContentView()
            }
            HStack {
                Button(action: {
                    selectedTab = 0
                }) {
                    VStack {
                        Image(systemName: selectedTab == 0 || selectedTab == nil ? "house.fill" : "house")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(Color.white)
                    }
                    .padding(.horizontal, 26)
                    Spacer()
                }
                Button(action: {
                    selectedTab = 1
                })
                {
                    VStack {
                        Image(systemName: selectedTab == 1 ? "person.crop.badge.magnifyingglass.fill" : "person.crop.badge.magnifyingglass")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(Color.white)
                    }
                    .padding(.horizontal, 26)
                    Spacer()
                    
                }
                Button(action: {
                    selectedTab = 2
                }) {
                    VStack {
                        Image(systemName: selectedTab == 2 ? "plus.app.fill" : "plus.app")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(Color.white)
                    }
                    .padding(.horizontal, 26)
                    Spacer()
                    
                }
                Button(action: {
                    selectedTab = 3
                }) {
                    VStack {
                        Image(systemName: selectedTab == 3 ? "film.stack.fill" : "film.stack")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(Color.white)
                    }
                    .padding(.horizontal, 26)
                    Spacer()
                    
                }
                Button(action: {
                    selectedTab = 4
                }) {
                    VStack(alignment: .center) {
                            Image("handsome")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundStyle(Color.white)
                                .clipShape(Circle())
                                Circle()
                                    .frame(width: 5, height: 5)
                                    .foregroundStyle(Color.red)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                    
                }
                .buttonStyle(.automatic)
            }
        }
    }
}
#Preview {
    CustomTabView()
}
