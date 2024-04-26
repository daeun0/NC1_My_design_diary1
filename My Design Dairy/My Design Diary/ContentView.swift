//
////  ContentView.swift
////  My Design Dairy
////
////  Created by Lee daeun on 4/11/24.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            
//                VStack(){
//                    HStack{
//                        Text("My design dairy")
//                            .foregroundColor(Color(red: 255/255, green: 255/255, blue: 255/255))
//                            .font(.system(size: 28, weight: .bold))
//                            .padding(.top, 80)
//                        
//                        Spacer()
//                        
//                    }
//                    
//                    
//                    
//                    ZStack{
//                        VStack{
//                            Spacer()
//                            RoundedRectangle(cornerRadius: 24)
//                                .foregroundColor(Color(red: 53/255, green: 53/255, blue: 56/255))
//                                .frame(width: 393, height: 674)
//                                .padding(.top, 76)
//                        }
//                        
//                        NavigationLink{ReferenceView()
//                        }label: {
//                             
//                            VStack{
//                                Spacer()
//                                RoundedRectangle(cornerRadius: 24)
//                                    .foregroundColor(Color(red: 249/255, green: 211/255, blue: 255/255))
//                                    .frame(width: 393, height: 312)
//                            }
//                        }
//                        
//                        NavigationLink{DesignView()
//                        }label: {
//                            
//                            VStack{
//                                Spacer()
//                                RoundedRectangle(cornerRadius: 24)
//                                    .foregroundColor(Color(red: 234/255, green: 128/255, blue: 252/255))
//                                    .frame(width: 393, height: 208)
//                            }
//                        }
//                        
//                        NavigationLink{MyView()
//                        }label: {
//                            
//                            VStack{
//                                Spacer()
//                                RoundedRectangle(cornerRadius: 24)
//                                    .foregroundColor(Color(red: 255/255, green: 178/255, blue: 255/255))
//                                    .frame(width: 393, height: 104)
//                                
//                            }
//                        }
//                        
//                        
//                        
//                    }
//                
//                
//            }   
//                .padding(.horizontal, 20)
//            .frame(width: 393, height: 852)
//            .background(Color(red: 33/255, green: 33/255, blue: 32/255))
////            .ignoresSafeArea(.all)
//         
//        }
//        
//    }
//}
//
//#Preview {
//    ContentView()
//}
