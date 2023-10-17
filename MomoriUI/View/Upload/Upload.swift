//
//  Upload.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct Upload: View {
    @State private var text = ""
    @Binding var isShowingUpload : Bool
    var body: some View {
        VStack{
            HStack{
                Text("추억 저장")
                    .font(.system(size: 25))
                    .bold()
                    .padding(.leading,30)
                
                Spacer()
                Button(action: {
                   
                }, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 18,height: 18)
                        .padding(.trailing,25)
                        .foregroundColor(.black)
                        
                })
                
                
                Button(action: {
                    isShowingUpload = false
                }, label: {
                    Image(systemName: "multiply")
                        .resizable()
                        .frame(width: 15,height: 15)
                        .padding(.trailing,30)
                        .foregroundColor(.black)
                        
                })
               
            }//헤더
            .padding(.top,30)
            Spacer()
            ZStack(alignment: .topLeading) {
                        if text.isEmpty {
                            Text("여기서 부터 사진 및 글을 입력하세요")
                                .foregroundColor(.gray)
                                .padding(.leading, 8)
                                .padding(.top, 8)
                        }
                        TextEditor(text: $text)
                            .opacity(text.isEmpty ? 0.25 : 1) // Make the TextEditor semi-transparent when it's empty
                    }
                    .font(.system(size: 20)) // Adjust font size here
                    .padding()
            
//            TextField("여기서 부터 사진 및 글을 입력하세요", text: $text)
//                       .font(.system(size: 20))
//                       .foregroundColor(.gray)
//                       .padding(30)
//                       .padding(.bottom,560)
            
            
               
            
            Divider()
            HStack{
                Button(action: {
                   
                }, label: {
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 21,height: 18)
                        .padding(.horizontal,15)
                        .foregroundColor(.black)
                        
                })
                
                
                Button(action: {
                   
                }, label: {
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 21,height: 18)
                        .padding(.horizontal,15)
                        .foregroundColor(.black)
                        
                })
                
                Button(action: {
                   
                }, label: {
                    Image(systemName: "pencil")
                        .resizable()
                        .frame(width: 21,height: 18)
                        .padding(.horizontal,15)
                        .foregroundColor(.black)
                        
                })
                
                
                
                Spacer()
                
            }
            .padding(.leading,20)
            .padding(.top,6)
            
           
        }
    }
}

#Preview {
    Upload(isShowingUpload: .constant(true))
}
