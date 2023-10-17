//
//  Profile.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        
        VStack{
            Text("프로필")
                .font(.system(size: 25))
                .bold()
                .padding(.top,30)
                .padding(.trailing,270)
            
            
            HStack(alignment: .top){// 프로필 시작
                Image("Profile")
                    .aspectRatio(contentMode: .fit)
                    .imageScale(.small)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 2)
                    }
                    .shadow(radius: 5)
                    .padding(EdgeInsets(top:10, leading: 0, bottom: 0, trailing: 0))
                    .overlay(
                        ZStack {
                            Circle()
                                .fill(Colors.Gray1.color)
                                .frame(width: 30, height: 30)
                            
                            Button(action: {
                                // 버튼 동작 구현
                            }, label: {
                                
                                Image(systemName: "camera")
                                    .foregroundColor(Colors.Mint.color)
                                    .font(.system(size: 15))
                                
                            })
                            
                        }
                            .offset(x: 35, y: 45) // 위치 조정
                    )
                
            }// 프로필
            
            Text("@nohjason")
                .foregroundStyle(Colors.Gray2.color)
                .font(.system(size: 13))
                .padding(5)
            
            HStack{// 1
                Rectangle()
                    .frame(width: 140,height: 140)
                    .cornerRadius(7)
                    .padding(.trailing,20)
                    
                
                Rectangle()
                    .frame(width: 140,height: 140)
                    .cornerRadius(7)
            }
            .foregroundColor(Colors.Gray3.color)
            .padding(.top,10)
            .padding(.bottom,10)
            .overlay {
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height: 140)
                            .cornerRadius(7)
                            .padding(.trailing,10)
                        
                        Image("ProfilePageIcon1")
                            .resizable()
                            
                            .frame(width: 50,height: 50)

                        
                    }
      
                        
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height: 140)
                            .cornerRadius(7)
                        Image(systemName: "plus.circle")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 50,height: 50)
                        
                    }
                    
                }
                .foregroundColor(Colors.Gray2.color)
                .padding(.top,20)
                .padding(.bottom,10)
                
            }// end
            

            
            HStack{
                Image("ProfilePageIcon2")
                    .resizable()
                    .frame(width: 155,height: 150)
                    
                    .padding(.trailing,5)
                
                Image("ProfilePageIcon3")
                    .resizable()
                    .frame(width: 155,height: 150)
                    
                    .padding(.trailing,10)
                
               
            }
            .padding(.leading,10)
            .padding(.bottom,10)
            
            Spacer()
        }
    }
}

#Preview {
    Profile()
}
