//
//  CommentInputView.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/17/23.
//

import SwiftUI

    struct CommentInputView: View {
        @State private var commentText = ""

        var body: some View {
            HStack {
                Image("Profile")
                    .resizable()
                    .frame(width: 25,height: 25)
                    .cornerRadius(20)
                
                TextField("댓글을 작성하세요", text: $commentText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(1)

                Button(action: {
        
                }) {
                    Image(systemName: "paperplane")
                        .resizable()
                        .frame(width: 12,height: 13)
                        .foregroundColor(.white)
                        .padding()
                        .background(Colors.Mint.color)
                        .frame(width: 40,height: 35)
                        .cornerRadius(10)
                }
            }
            .padding()
        }


    }


#Preview {
    CommentInputView()
}
