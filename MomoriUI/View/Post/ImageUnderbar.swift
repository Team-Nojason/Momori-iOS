//
//  ImageUnderbar.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/17/23.
//

import SwiftUI

struct ImageUnderbar: View {
    var body: some View {
 
            HStack{
                Rectangle()
                    .frame(width: 350, height: 45)
                    .foregroundColor(.white)


            }
            .overlay {
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .padding(.leading,15)
                    })

                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "bubble.right")
                            .foregroundColor(.black)
                            .padding(.leading,10)
                    })
                
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "paperplane")
                            .foregroundColor(.black)
                            .padding(.trailing,15)
                            
                        
                    })

                }
                
                
            }
        
       
    }
}

#Preview {
    ImageUnderbar()
}
