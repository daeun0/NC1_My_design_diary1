import SwiftUI
import SwiftData

struct MyView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    @State private var mygoalText = ""
    @State private var todoText = ""
    var body: some View {
        VStack{
            
            VStack(alignment: .leading){
                ZStack{
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
                    
                    
                    Text("My")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .padding(.top, 56)
                }.padding(.bottom, 48)
                
                HStack{
                    Text("My goal")
                        .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
                        .font(.system(size: 16, weight: .medium))
                    
                    Spacer()
                }
                
                VStack {
                    ZStack(alignment: .leading) {
                        if mygoalText.isEmpty {
                            Text("Type something")
                                .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
                                .padding(EdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 0))
                                .font(.system(size: 14, weight: .regular))
                        }
                        TextField("", text: $mygoalText)
                            .padding(.leading, 18)
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            .keyboardType(.default)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .frame(width: 353, height: 56)
                    .background(Color(red: 53/255, green: 53/255, blue: 56/255))
                    .cornerRadius(12)
                    .padding(.top, 16)
                 
                    HStack{
                        Text("To do list")
                            .foregroundColor(Color(red: 215/255, green: 215/255, blue: 225/255))
                            .font(.system(size: 16, weight: .medium))
                        
                        Spacer()
                    }.padding(.top, 28)
                    
                    ZStack(alignment: .leading) {
                        if todoText.isEmpty {
                            Text("to do")
                                .foregroundColor(Color(red: 156/255, green: 156/255, blue: 165/255))
                                .padding(EdgeInsets(top: 0, leading: 64, bottom: 0, trailing: 0))
                                .font(.system(size: 14, weight: .regular))
                        }
                        
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
                            .frame(width: 24, height: 24)
                            .padding(.leading, 22)
                        
                        TextField("", text: $todoText)
                            .padding(.leading, 64)
                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
                            .keyboardType(.default)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .frame(width: 353, height: 56)
                    .background(Color(red: 53/255, green: 53/255, blue: 56/255))
                    .cornerRadius(12)
                    .padding(.top, 16)
                    
                    Spacer()
                }
                
                
               
           
             
            }
            
            
            Spacer()
            
        }
        .padding(.horizontal, 20)
        .frame(width: 393, height: 815)
        .background(Color(red: 33/255, green: 33/255, blue: 32/255))
        .navigationBarBackButtonHidden()
        
        
    }
        
    

    
       
}




#Preview {
    MyView()
}

