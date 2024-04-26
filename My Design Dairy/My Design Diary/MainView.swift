//import SwiftUI
//
//struct MainView: View {
//    var body: some View {
//        NavigationStack {
//            VStack{
//                HStack{
//                    Text("My design dairy")
//                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                        .font(.system(size: 28, weight: .bold))
//                    
//                    Spacer()
//                }
//                .padding(.horizontal, 20)
//                .padding(.top, 40)
//
//                Spacer()
//                
//                ZStack(alignment: .bottom) {
//                    NavigationLink(destination: UploadView()) {
//                        RoundedRectangle(cornerRadius: 24)
//                            .frame(height: 674)
//                            .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
////                            .offset(x: 0, y: 37)
//                        
//                            
//                    }
//                    NavigationLink(destination: ReferenceView()) {
//                        RoundedRectangle(cornerRadius: 24)
//                            .frame(height: 312)
//                            .foregroundColor(Color(red: 249/255, green: 211/255, blue: 255/255))
////                            .offset(x: 0, y: 213)
//                    }
//                    NavigationLink(destination: DesignView()) {
//                        RoundedRectangle(cornerRadius: 24)
//                            .frame(height: 208)
//                            .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
////                            .offset(x: 0, y: 265)
//                    }
//                    NavigationLink(destination: MyView()) {
//                        RoundedRectangle(cornerRadius: 24)
//                            .frame(height: 104)
//                            .foregroundColor(Color(red: 255/255, green: 178/255, blue: 255/255))
//                            
////                            .offset(x: 0, y: 315)
//                    }
//                }
//            }
//            .frame(width: 393, height: 815)
//            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
////            .ignoresSafeArea(.all)
//        }
//    }
//}
//
//#Preview {
//    MainView()
//}
//
