//
//  Post.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct Post: View {
    var body: some View {
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

                    Spacer()
                    
                    CommentInputView()

                }
            }
    }
}


#Preview {
    Post()
}
