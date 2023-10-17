//
//  Setting.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        VStack{
            Text("설정")
                .font(.system(size: 25))
                .bold()
                .padding(.top,30)
                .padding(.trailing,290)
            
            
            Button {
                
                
            } label: {
                VStack{
                    HStack{
                        Text("내 계정")
                            .font(.system(size:15))
                            .padding(.horizontal,30)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .padding(.horizontal,30)
                            .foregroundColor(.black)
                        
                    }
                    .padding(.vertical,15)
                    
       

                    
                }
            }
            
            Button(action: {
                
            }, label: {
                HStack{
                    Text("개인정보 수집 및 이용 약관")
                        .font(.system(size:15))
                        .padding(.horizontal,30)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .padding(.horizontal,30)
                        .foregroundColor(.black)
                    
                }
                .padding(.vertical,15)
            })
            
            Divider()
            
            Button(action: {
                
            }
            , label: {
                HStack{
                    Text("로그아웃")
                        .font(.system(size:15))
                        .padding(.horizontal,30)
                        .foregroundColor(.red)
                    
                    Spacer()
                    
//                    Image(systemName: "chevron.right")
//                        .padding(.horizontal,30)
//                        .foregroundColor(.black)
//                    
                }
                .padding(.vertical,15)
            })
            
            
            
            Spacer()
            
            
        }
    }
}

#Preview {
    Setting()
}
