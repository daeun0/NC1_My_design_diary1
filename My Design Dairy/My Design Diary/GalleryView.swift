//import SwiftUI
//import PhotosUI
//import CoreLocation
//
//
//// 새로운 PhotoData 구조체 정의
//struct PhotoData {
//    var id: UUID
//    var image: UIImage
//    var date: String
//    var location: String
//}
//
//struct PhotoPicker: UIViewControllerRepresentable {
//    @Binding var selectedImages: [UIImage]
//    @Binding var showPicker: Bool
//    @Binding var imagesSelected: Bool  // 이미지 선택 완료 상태를 알리는 새로운 변수
//
//    func makeUIViewController(context: Context) -> PHPickerViewController {
//        var config = PHPickerConfiguration()
//        config.selectionLimit = 0 // 0은 무제한 선택을 의미합니다.
//        config.filter = .images // 이미지만 선택하도록 설정
//
//        let picker = PHPickerViewController(configuration: config)
//        picker.delegate = context.coordinator
//        return picker
//    }
//
//    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    class Coordinator: NSObject, PHPickerViewControllerDelegate {
//        var parent: PhotoPicker
//
//        init(_ parent: PhotoPicker) {
//            self.parent = parent
//        }
//
//        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
//            picker.dismiss(animated: true)
//            
//            if !results.isEmpty {
//                self.parent.imagesSelected = true  // 이미지 선택이 완료되었음을 알립니다.
//            }
//
//            for result in results {
//                result.itemProvider.loadObject(ofClass: UIImage.self) { (object, error) in
//                    if let image = object as? UIImage {
//                        DispatchQueue.main.async {
//                            self.parent.selectedImages.append(image)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//struct GalleryView: View {
//    @State var showPicker: Bool = false
//    @State private var selectedImages: [UIImage] = []
//    @State private var imagesSelected: Bool = false
//    
//    @State private var selectedImage: UIImage?
//    @State private var isCameraPresented = false
//    
//    @State private var photoDate: Date?
//    @State private var photoLocation: CLLocation?
//    
//    @State private var alertMessage: String = ""
//    @State private var isShowingAlert: Bool = false
//    
////    @EnvironmentObject var tripModel: TripModel
//    
//    @State var tag:Int? = nil
//    
//    private var clLocationManager = CLLocationManager()
//    
//    @Environment(\.presentationMode) var presentationMode
//    
//    var body: some View {
//        NavigationView {
//            VStack(alignment: .leading) {
////                ZStack{
////                    NavigationLink(destination: ReferenceView(), tag: 1, selection: self.$tag ) {
////                        EmptyView()
////                    }
////                }
//                
//                VStack(alignment: .leading) {
//                    if selectedImages.isEmpty {
//                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
//                        }) {
//                            Text("닫기")
//                                .foregroundColor(.blue)
//                        }
//                       
//                       
//                            ZStack(alignment: .center) {
//                                Button(action: {
//                                    self.showPicker = true
//                                }, label: {
//                                    RoundedRectangle(cornerRadius: 30)
//                                        .frame(width: 169, height: 222)
//                                        .foregroundColor(Color(red: 101/255, green: 117/255, blue: 255/255))
//                                })
//                                VStack {
//                                    Image(systemName: "photo")
//                                        .resizable()
//                                        .frame(width: 100, height: 80)
//                                        .foregroundColor(.white)
//                                    Text("앨범")
//                                        .font(.system(size: 30, weight: .bold))
//                                        .foregroundColor(.white)
//                                }
//                            }
//                        
//                        
//                    } else {
//                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
//                        }) {
//                            Text("닫기")
//                                .foregroundColor(.blue)
//                        }.padding(.leading, 24)
//                       
//                        ScrollView { 
////                            🍎🍎
//                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
//                                
//                                ForEach(selectedImages, id: \.self) { img in
//                                    Image(uiImage: img)
//                                        .resizable()
//                                        .frame(width: 150, height: 150)
//                                        .scaledToFill()
//                                        .cornerRadius(30)
//                                }
//                                Button(action: {
//                                    self.showPicker = true 
////                                    🍎🍎
//                                }, label: {
//                                    ZStack {
//                                        RoundedRectangle(cornerRadius: 30)
//                                            .foregroundColor(Color(red: 210/255, green: 210/255, blue: 210/255))
//                                            .frame(width: 150, height: 150)
//                                        Image(systemName: "plus")
//                                            .resizable()
//                                            .foregroundColor(.white)
//                                            .frame(width: 57, height: 57)
//                                    }
//                                })
//                            }.padding([.leading, .trailing], 20)
//                        }
//                        HStack {
//                            Spacer()
//                            Button(action: {
//                                self.tag = 1
//                            }, label: {
//                                ZStack {
//                                    RoundedRectangle(cornerRadius: 20)
//                                        .foregroundColor(Color(red: 101/255, green: 117/255, blue: 255/255))
//                                        .frame(width: 343, height: 69)
//                                    Text("다음")
//                                        .font(.system(size: 24, weight: .bold))
//                                        .foregroundColor(.white)
//                                }
//                            })
//                            Spacer()
//                        }
//                        .padding(.top, 15)
//                    }
//                }
//            }
//            .sheet(isPresented: $showPicker) {
//                PhotoPicker(selectedImages: self.$selectedImages, showPicker: self.$showPicker, imagesSelected: self.$imagesSelected)
//            }
////            .sheet(isPresented: $isCameraPresented) {
////                CameraPicker(selectedImage: $selectedImage, isCameraPresented: $isCameraPresented)
////            }
////            .onChange(of: selectedImages) { newValue in
////                // selectedImages가 변경될 때마다 tripModel.selectedPhotos를 업데이트합니다.
//////                tripModel.selectedPhotos = newValue
////            }
//        }
//    }
//}
//
//#Preview {
//   GalleryView()
//}
