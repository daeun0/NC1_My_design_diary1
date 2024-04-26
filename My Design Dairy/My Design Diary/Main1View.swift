import SwiftUI

struct Main1View: View {
    
    @State var imageList: [UIImage?] = []
    @State var image : UIImage?
//    @State var titleText: String
//    @State var memoText: String
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0){
                HStack{
                    Text("My design diary")
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .font(.system(size: 28, weight: .bold))
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 56)
                .padding(.bottom, 72)
                
                
                
                NavigationLink(destination: UploadView()) {
                    
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 24)
                        .frame(height: 362)
                        .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                        .padding(.top, 72)
                        .overlay(
                            Text("+")
                                    .font(.system(size: 64, weight: .thin))
                                    .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                                    .padding(.top,36)
                        )
                    
                        .overlay(
                        Text("Upload")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            .padding(.top,136)
                        
                        
                        )
                        
                }
                
                
                NavigationLink(destination: ReferenceView()) {
                        
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 24)
                        .frame(height: 104)
                        .foregroundColor(Color(red: 249/255, green: 211/255, blue: 255/255))
                        .background(Color( red: 53/255, green: 53/255, blue: 56/255))
                        .overlay(
                            Text("Reference")
                                    .font(.system(size: 48, weight: .thin))
                                    .foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255))
                                    .kerning(2)
                                    
                        )
                        
                }
                
                NavigationLink(destination: DesignView()) {
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 24)
                        .frame(height: 104)
                        .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
                        .background(Color(red: 249/255, green: 211/255, blue: 255/255))
                        .overlay(
                            Text("Design")
                                    .font(.system(size: 48, weight: .thin))
                                    .foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255))
                                    .kerning(2)
                        )
                }
                
                NavigationLink(destination: MyView()) {
                    UnevenRoundedRectangle(topLeadingRadius: 24, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 24)
                        .frame(height: 104)
                        .foregroundColor(Color(red: 255/255, green: 178/255, blue: 255/255))
                        .background(Color(red: 234/255, green: 128/255, blue: 252/255))
                        .overlay(
                            Text("My")
                                    .font(.system(size: 48, weight: .thin))
                                    .foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255))
                                    .kerning(2)
                                    
                        )
                }
                
                Spacer()
            }
            .frame(width: 393, height: 815)
            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
            .navigationBarBackButtonHidden()
//            .ignoresSafeArea(.all)
            
        }
    }
}

//#Preview {
//    Main1View()
//}


// 네비게이션 링크로 넘어갈 때 트랜지션? 없애는법, 버튼을 누르면 애니메이션 효과 적용하고 싶음


