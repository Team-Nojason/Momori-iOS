//
//  NaverLogin.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/24/23.
//

import Foundation
import SwiftUI

struct NaverLogin : View{
    var body: some View{
        ZStack {
            Button(action: {
                
            }, label: {
                Image("Naver")  // Replace with your Google logo image name.
                    .resizable()
                    .aspectRatio(contentMode: .fit) 
                    .frame(width: 70, height: 50, alignment: .center)
                    .background(Color.white)
                    .clipShape(Circle())
                    .padding(10)
                    .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 1, y: 2)
            })
            
            
        }
    }
}
    
