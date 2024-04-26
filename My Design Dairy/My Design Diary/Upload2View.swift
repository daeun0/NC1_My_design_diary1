//import SwiftUI
//
//struct Upload2View: View {
//    
//    @State var image: UIImage?
//    @State private var title1Text = ""
//    @Environment(\.dismiss) var dismiss
//    //@State private var memoText = ""
//    @State private var memo1Text: String = ""
//    
//    var body: some View {
//        VStack(alignment: .leading){
////            if let uiImage = image {
////                Image(uiImage: uiImage)
////                    .resizable()
////                    .frame(width: 200, height: 50)
////            }
//            HStack{
//                Button(action: {
//                    dismiss()
//                }, label: {
//                    Image(systemName: "chevron.backward")
//                        .font(.system(size: 24))
//                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                })
//                Spacer()
//            }.padding(.top, 56)
//            
//            HStack{
//                Text("Title")
//                    .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
//                    .font(.system(size: 16, weight: .medium))
//                
//                Spacer()
//            }.padding(.top, 48)
//            
//            VStack {
//                ZStack(alignment: .leading) {
//                    if title1Text.isEmpty {
//                        Text("Type something")
//                            .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
//                            .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
//                            .font(.system(size: 14, weight: .regular))
//                    }
//                    TextField("", text: $title1Text)
//                        .padding(.leading, 18)
//                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                        .keyboardType(.default)
//                        .font(.system(size: 14, weight: .regular))
//                }
//                .frame(width: 353, height: 56)
//                .background(Color(red: 53/255, green: 53/255, blue: 56/255))
//                .cornerRadius(12)
//                .padding(.top, 16)
//                
//            }
//
//            
//            VStack(alignment:.leading) {
//                Text("Memo")
//                    .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
//                    .font(.system(size: 16, weight: .medium))
//                    .padding(.top, 28)
//
//                ZStack(alignment: .topLeading) {
//                    RoundedRectangle(cornerRadius: 12)
//                        .fill(Color(red: 53/255, green: 53/255, blue: 56/255))
//                    
//                    if memo1Text.isEmpty {
//                        Text("Type something")
//                            .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
//                            .padding(EdgeInsets(top: 20, leading: 18, bottom: 0, trailing: 0))
//                            .font(.system(size: 14, weight: .regular))
//                    }
//                    
//                    TextEditor(text: $memo1Text)
//                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                        .padding(12)
//                        .font(.system(size: 14, weight: .regular))
//                }
//                .frame(width: 353, height: 300)
//                .cornerRadius(12)
//                .padding(.top, 12)
//                .scrollContentBackground(.hidden)
//            }
// 
//            
//          
//                NavigationLink {
//                   ReferenceView(imageList: [image])
//                        .navigationBarBackButtonHidden()
//                } label: {
//                    ZStack(alignment: .bottom){
//                        RoundedRectangle(cornerRadius: 12)
//                            .frame(height: 56)
//                            .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
//                            .overlay(Text("Upload"))
//                            .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                            .padding(.top, 80)
//                        
//                        
//                    }
//                }
//            
//
//            
//            Spacer()
//            
//        }   .padding(.horizontal, 20)
//            .frame(width: 393, height: 815)
//            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
//            .navigationBarBackButtonHidden()
//    }
//}
//
//#Preview {
//    Upload2View()
//}
