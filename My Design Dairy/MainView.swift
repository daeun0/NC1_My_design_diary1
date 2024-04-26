import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Text("My design dairy")
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .font(.system(size: 28, weight: .bold))
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 76)
                
                Spacer()
                
            }
            .frame(width: 393, height: .infinity)
            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
            .ignoresSafeArea(.all)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
// 나의 첫 깃허브
