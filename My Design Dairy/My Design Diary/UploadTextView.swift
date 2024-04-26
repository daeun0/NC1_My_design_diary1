import SwiftUI

struct UploadTextView: View {
    
    @State private var selection = 0
    @Environment(\.dismiss) var dismiss
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color(red: 99/255, green: 99/255, blue: 102/255))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color(red: 53/255, green: 53/255, blue: 56/255))
    }
    
    var body: some View {
        VStack{
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
     
            
            RoundedRectangle(cornerRadius: 24)
                .frame(height: 577)
                .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
                .padding(.top, 40)
                .overlay(
                    Text("+")
                            .font(.system(size: 64, weight: .thin))
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            
                )
            
                .overlay(
                Text("Upload")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                    .padding(.top,100)

                )
                
            
            Spacer()
            
        } .padding(.horizontal, 20)
          .frame(width: 393, height: 815)
          .background(Color(red: 33/255, green: 33/255, blue: 32/255))
          .navigationBarBackButtonHidden()
    }
}

#Preview {
    UploadTextView()
}

