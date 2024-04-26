import SwiftUI
import SwiftData

struct DesignView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    @Query var designTexts: [DesignText]
    @State private var titleText = ""
    @State private var memoText: String = ""
    @State private var navigationToDesignDetailView = false
    @State var selectedIndex: Int = 0

    //    @State private var showSheet = false
    var body: some View {
        VStack{
            
//            NavigationLink(destination: DesignDetailView(selectedIndex: $selectedIndex, design: designTexts[selectedIndex]).navigationBarBackButtonHidden(), isActive: $navigationToDesignDetailView) {
//                EmptyView()
//            }
            
            VStack(alignment: .leading){
                HStack{
                    HStack{
                                            Button(action: {
                                                dismiss()
                                            }, label: {
                                                Image(systemName: "chevron.backward")
                                                    .font(.system(size: 24))
                                                    .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    
                                            })
                    }
                    
//                    NavigationLink(destination: Main1View()){
//                        Image(systemName: "chevron.backward")
//                            .font(.system(size: 24))
//                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                        
//                    }
                    
                    
                    
                    Spacer()
                    
                    Text("Design")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .padding(.leading, 10)
                    Spacer()
                    
                    NavigationLink(destination: DesignTextView(selectedIndex: $selectedIndex)){
                        //Spacer()
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        
                        
                    }
                }
                .padding(.top, 56)
                
                ScrollView{
                    VStack(alignment: .leading){
                        
                        ForEach(designTexts, id: \.self) { designText in
                            NavigationLink {
//                                let firstindex = designTexts.firstIndex(where: { $0.id == designText.id})
                                DesignDetailView(design: designText)
                            } label: {
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                                    .frame(width: 353, height: 56)
                                    .padding(.bottom, 12)
                                    .overlay(
                                        GeometryReader { geometry in
                                            Text(designText.title)
                                                .font(.system(size: 14))
                                                .foregroundColor(Color(red: 232/255, green: 232/255, blue: 232/255))
                                                .alignmentGuide(.leading) { _ in
                                                    -geometry.size.width / 2 // 텍스트의 너비의 절반만큼 왼쪽으로 이동
                                                }
                                                .padding(.top, 20)
                                                .padding(.leading, 20)
                                        }
                                    )
                            }

//                            Button {
//                                // 저장할 디자인 텍스트와 함께 디자인 디테일 뷰를 활성화합니다.
//                                //titleText = designtext.title
////                                titleText = designTexts[index].title// 선택한 디자인 텍스트의 타이틀을 저장합니다.
//                                selectedIndex = index
//                                titleText = designTexts[selectedIndex].title
//                                navigationToDesignDetailView = true
//                            } label: {
//                                RoundedRectangle(cornerRadius: 12)
//                                    .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                                    .frame(width: 353, height: 56)
//                                    .padding(.bottom, 12)
//                                    .overlay(
//                                        GeometryReader { geometry in
//                                            Text(designTexts[index].title)
//                                                .font(.system(size: 14))
//                                                .foregroundColor(Color(red: 232/255, green: 232/255, blue: 232/255))
//                                                .alignmentGuide(.leading) { _ in
//                                                    -geometry.size.width / 2 // 텍스트의 너비의 절반만큼 왼쪽으로 이동
//                                                }
//                                                .padding(.top, 20)
//                                                .padding(.leading, 20)
//                                        }
//                                    )
//                            }
                        }
                        
                    }
                }.padding(.top, 36)
                
                Spacer()
                
            }
        }
        .padding(.horizontal, 20)
        .frame(width: 393, height: 815)
        .background(Color(red: 33/255, green: 33/255, blue: 32/255))
        .navigationBarBackButtonHidden()
//        .onAppear {
//            print("selectedIndex = \(selectedIndex)")
//        }
    }
}


#Preview {
    DesignView()
}



