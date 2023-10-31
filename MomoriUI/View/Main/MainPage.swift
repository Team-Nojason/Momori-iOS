//
//  MainPage.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct MainPage: View {
    @State var isShowingProfile : Bool = false
    @State var isShowingSetting : Bool = false
    @State var isShowingUpload : Bool = false
    
    var body: some View {
        ZStack {
            KakaoMapVCWrapper()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        Button{
                            isShowingSetting = true
                        }label: {
                            LNavi()
                        }
                        .sheet(isPresented: $isShowingSetting) {
                            VStack{
                                Setting()
                            }
                        }
                        
                        .padding(.bottom,10)
                        
                        
                        Button{
                            isShowingProfile = true
                        }label: {
                            UserNavi()
                        }
                        
                        .sheet(isPresented: $isShowingProfile) {
                            VStack{
                                Profile()
                                
                            }
                        }
                    }
                    
                    
                }
                .padding(.top,40)
                
                Spacer()
                
                Button{
                isShowingUpload = true
                }label: {
                    RNavi()
                }
                
                .sheet(isPresented:$isShowingUpload){
                    Upload(isShowingUpload:$isShowingUpload)
                }
                
                
                
            }



        }

    }
}


#Preview {
    MainPage()
}
