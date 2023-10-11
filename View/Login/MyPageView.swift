//
//  MyPageView.swift
//  GoogleLogin
//
//  Created by dgsw8th61 on 2023/10/03.
//

import SwiftUI
import GoogleSignIn

struct MyPageView: View {
    



    // 화면 종료
    @Environment(\.dismiss) private var dismiss
    // 유저 데이터 바인딩
    @Binding var userData:UserData
    
    var body: some View {
        
        
        NavigationStack{
 

                VStack{
                    
                    
                    // 프로필
                    HStack(alignment: .top){
                        AsyncImage(url: userData.url)
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.small)
                            .frame(width: 100, height: 100, alignment: .center)
                            .cornerRadius(50)
                            .overlay {
                                Circle().stroke(.white, lineWidth: 2)
                            }.shadow(radius: 5)
                            .padding(EdgeInsets(top: 60, leading: 0, bottom: 0, trailing: 0))
                        
                        
                        // 이름
                        Text(userData.name)
                            .font(.system(size: 23 ))
                            .bold()
                            .padding(EdgeInsets(top: 95, leading: 20, bottom: 0, trailing: 0))
                        
                        // 이메일
                        //                Text(userData.email)
                       
                        
                    }
                    .padding(.trailing, 170)
      
                    
                    Spacer()
                    
                    

                        
                        
                    }
                }
                
            }
            

        
    }



struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView(userData: .constant(UserData(url: nil, name: "이름", email: "이메일")))
    }
}
