import SwiftUI
import SwiftData

struct DesignDetailView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    @Query var designTexts: [DesignText]
//    @Binding var selectedIndex: Int
    var design: DesignText
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                
                HStack{
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    })
                    
                    Spacer()
                    
                    Text("Design")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .padding(.leading, 14)
                    //                            .padding(.top, 56)
                    //
                    Spacer()
                    
                    Menu {
                        Button("Edit" ,systemImage: "pencil") {
                            // Edit 액션
                        }
                        Button("Delete", systemImage: "trash", role: .destructive) {
                            //modelContext.delete(design)
                            modelContext.delete(design)
                            dismiss()
                        }
                    } label: {
                        Label("", systemImage: "ellipsis")
                            .font(.system(size: 24))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    }
                    .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                    
                    //                        Image(systemName: "ellipsis")
                    //                            .font(.system(size: 24))
                    //                                .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    //                            .contextMenu {
                    //                                Button(action: {
                    //                                    print("Edit")
                    //                                }) {
                    //                                    Label("Edit", systemImage: "pencil")
                    //                                }
                    //                                Button(action: {
                    //                                    print("Delete")
                    //                                }) {
                    //                                    Label("Delete", systemImage: "trash")
                    //                                }
                    //                            }
                    
                }
                .padding(.top, 56)
                
                
                
                
                VStack(alignment: .leading){
                    //                        ForEach(designTexts, id: \.self){ designtext in
                    Text(design.title)
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    
                    //                        }
                }.padding(.top, 48)
                
                ZStack(alignment: .topLeading){
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 510)
                        .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                    
                    
                    Text(design.memo)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color(red: 206/255, green: 206/255, blue: 206/255))
                        .padding(20)
                        .lineSpacing(6)
                    //
                    //
                    
                    
                }.padding(.top, 16)
                Spacer()
                
            }
        }.padding(.horizontal, 20)
            .frame(width: 393, height: 815)
            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
            .navigationBarBackButtonHidden()
        
            .onAppear {
//                print("selectedIndex: \(selectedIndex)")
            }
    }
    
}
//#Preview {
//    DesignDetailView()
//}



