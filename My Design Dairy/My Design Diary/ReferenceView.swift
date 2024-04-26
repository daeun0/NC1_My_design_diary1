import SwiftUI
import SwiftData
import PhotosUI

struct ReferenceView: View {
    var image: UIImage?
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @Query var references: [Reference]
    @State var imageList: [UIImage?] = []
    @State var columns: [UIImage?] = []
    @State private var selection = 0
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImage: UIImage?
    @State private var navigationToNextView = false
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        VStack(alignment: .leading){
//            ZStack{
                HStack{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    })
                    Spacer()
    
                Text("Reference")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .padding(.leading, 10)
                Spacer()
                PhotosPicker(selection: $selectedItem)
                {
                    Image(systemName: "plus")
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                }
                }.padding(.top, 56)
                
                
//            }
            // ForEach
            // LazyGridView
            
            ScrollView{
                VStack(alignment: .leading){
  
                    LazyVGrid(columns: layout, spacing: 20){
                        
                      
                        
//                        RoundedRectangle(cornerRadius: 12)
//                            .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                            .frame(width: 167, height: 239)
//                            .overlay(
//                                Image(systemName: "plus")
//                                    .font(.system(size: 24))
//                                    .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
//                            )
                        
                        
                        ForEach(references, id: \.self){ reference in
                            if let uiImage = UIImage(data: reference.photo) {
                                Image(uiImage: uiImage)
                                    .resizable()
                                    .frame(width: 167, height: 239)
                                    .cornerRadius(12)
                                    .scaledToFill()
                            }
                        }
                        
                    }
                }
            }.padding(.top, 36)
            
            
            Spacer()
            
            
        }.padding(.horizontal, 20)
            .frame(width: 393, height: 815)
            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
            .navigationBarBackButtonHidden()
        
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
    
}

//#Preview {
//   ReferenceView()
//}
