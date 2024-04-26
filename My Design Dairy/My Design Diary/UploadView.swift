import SwiftUI
import PhotosUI
import SwiftData



struct UploadView: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var titleText = ""
    @State private var memoText: String = ""
    @State private var selection = 0
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage?
    @State private var navigationToNextView = false
    @State private var navigationToDesignView = false
    
    
    //세그먼트 피커 색상 지정
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color(red: 99/255, green: 99/255, blue: 102/255))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color(red: 53/255, green: 53/255, blue: 56/255))
    }
    
    
    var body: some View {
        VStack{
            
            NavigationLink(destination: ReferenceView(image: selectedImage), isActive: $navigationToNextView) {
                EmptyView()
            }
            
            NavigationLink(destination: DesignView().navigationBarBackButtonHidden(), isActive: $navigationToDesignView) {
                EmptyView()
            }
            
            HStack{
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                })
                Spacer()
            }.padding(.top, 56)
            
            Picker(selection: $selection, label: Text("Picker")) {
                Text("Image").tag(0)
                Text("Text").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 160)
            .padding(.top, 16)
            .padding(.bottom, 40)
            
            
            // 선택된 항목에 따라 다른 뷰 표시
            if selection == 0 {
                // Image
                PhotosPicker(selection: $selectedItem)
                             {
                    
                    RoundedRectangle(cornerRadius: 24)
                        .frame(height: 577)
                        .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                        .overlay(
                            Image(systemName: "plus")
                                .font(.system(size: 36))
                                .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
                        )
                }
            }else if selection == 1 {
                // Text
                HStack{
                    Text("Title")
                        .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
                        .font(.system(size: 16, weight: .medium))
                    
                    Spacer()
                }
                
                VStack {
                    ZStack(alignment: .leading) {
                        if titleText.isEmpty {
                            Text("Type something")
                                .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
                                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
                                .font(.system(size: 14, weight: .regular))
                        }
                        TextField("", text: $titleText)
                            .padding(.leading, 18)
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            .keyboardType(.default)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .frame(width: 353, height: 56)
                    .background(Color(red: 53/255, green: 53/255, blue: 56/255))
                    .cornerRadius(12)
                    .padding(0)
                    
                    
                    Spacer()
                }
                .padding(.top, 24)
                .frame(width: 320, height: 64)
 
                
                VStack(alignment:.leading) {
                    Text("Memo")
                        .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
                        .font(.system(size: 16, weight: .medium))
                        .padding(.top, 28)
   
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color(red: 53/255, green: 53/255, blue: 56/255))
                        
                        if memoText.isEmpty {
                            Text("Type something")
                                .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
                                .padding(EdgeInsets(top: 20, leading: 18, bottom: 0, trailing: 0))
                                .font(.system(size: 14, weight: .regular))
                        }
                        
                        TextEditor(text: $memoText)
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            .padding(12)
                            .font(.system(size: 14, weight: .regular))
                            .lineSpacing(6)
                    }
                    .frame(width: 353, height: 236)
                    .cornerRadius(12)
                    .padding(.top, 12)
                    .scrollContentBackground(.hidden)
                }
                
                Spacer()
                
//                RoundedRectangle(cornerRadius: 12)
//                    .frame(height: 56)
//                    .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
//                    .overlay(Text("Upload"))
//                    .padding(.top, 64)
                
//                NavigationLink(
//                    destination: DesignView().navigationBarBackButtonHidden(),
//                    label: {
//                        ZStack(alignment: .bottom){
//                            RoundedRectangle(cornerRadius: 12)
//                                .frame(height: 56)
//                                .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
//                                .overlay(Text("Upload"))
//                                .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                                .padding(.top, 64)
//                        }
//                        
//                    }
//                ).onTapGesture {
//                    print(#function)
//                    var designText = DesignText(title: titleText, memo: memoText)
//                    modelContext.insert(designText)
                Button {
                    var designText = DesignText(title: titleText, memo: memoText)
                    modelContext.insert(designText)
                    navigationToDesignView = true
                    dismiss()
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 56)
                        .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
                        .overlay(Text("Upload"))
                        .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                        .padding(.top, 64)
                }
            }
            
            Spacer()
        }
        
        .padding(.horizontal, 20)
        .frame(width: 393, height: 815)
        .background(Color(red: 33/255, green: 33/255, blue: 32/255))
        .navigationBarBackButtonHidden()
        
        //데이터 > uiimage > 네비게이션으로 전달
        .onChange(of: selectedItem) { oldValue, newValue in
            Task {
                if
                    let data = try? await newValue?.loadTransferable(type: Data.self),
                    let image = UIImage(data: data)
                {
                    selectedImage = image
                    navigationToNextView = true
                    
                    //저장된 데이터 불러오기
                    var photo = Reference(photo: (selectedImage?.pngData())!)
                    modelContext.insert(photo)
                }
            }
        }
    }
    
    //    private func hideKeyboard() {
    //            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    //        }
    //
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}


// 키보드 다른 화면 탭할 때 사라지게
// 키보드로 인해 화면 올라가는거 조정하는법
