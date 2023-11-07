//
//  Post.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct Post: View {
    @State var comments = ["유저1","유저2","유저3","유저4","유저5"]
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            VStack{
                
                Rectangle()
                    .foregroundColor(.white)
                
                
                // 색 조정 필요
                    .frame(width: 350, height: 650)
                    .cornerRadius(10)
                    .overlay {
                        VStack {
                            UserNamebar()
                            
                            
                            Image("TestImage")
                                .resizable()
                                .frame(width: 350, height: 260)
                            
                            ImageUnderbar()
                   
                            ScrollView(.vertical){
                                VStack{
                                    ForEach(comments, id: \.self){ comment in
                                        HStack{
                                            
                                            Image("Profile")
                                                .aspectRatio(contentMode: .fit)
                                                .imageScale(.small)
                                                .frame(width: 25, height: 25, alignment: .center)
                                                .cornerRadius(50)
                                                .overlay {
                                                    Circle().stroke(.white, lineWidth: 2)
                                
                                                }
                                            VStack{
                                                Text(comment)
                                                    .font(.system(size: 10))
                                                    .padding(.trailing,55)
                                                    .opacity(0.8)
                                                    .padding(.bottom,3)
                                                Text("1234567890")
                                                    .font(.system(size: 13))
                                            }
                                        }
                                        .padding()
                                    }
                                }
                                
                               
                                
                                
                            }
                            .padding(.trailing,18)
                            Spacer()
                            
                            CommentInputView()
                            
                        }
                    }
            }
        }
    }
}


#Preview {
    Post()
}
