//
//  Login.swift
//  GoogleLogin
//
//  Created by dgsw8th61 on 2023/10/02.
//

import SwiftUI
import AuthenticationServices

struct Login: View {
    @State private var Start = false
  
    var body: some View {
        NavigationView{
            VStack{
                Text("Momori")
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .opacity(0.5)
                    .padding(.bottom,80)
                
                Text("당신의 \n추억을 \n공유해보세요 🔥")
                    .foregroundColor(.black)
                    .font(.system(size: 30, design: .rounded))
                    .bold()
                    .lineSpacing(10)
                    .padding(.trailing,70)
                    .padding(.bottom,50)
                
                Text("처음이신가요?")
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                    .opacity(0.5)
                    .padding(.trailing,170)
                    .padding(.bottom,10)
                

                NavigationLink(
                  destination: SignIn(),
                  isActive: $Start,
                  label: {
                      HStack(spacing: 4) {
                          Text("시작하기")
                              
                              .padding(.trailing, 10)

                          Image(systemName: "chevron.right")
                      }
                      .bold()
                      .padding(15)
                      .background(Color.black)
                      .cornerRadius(10)
                      .foregroundColor(Color.white)
                      .padding(.trailing,140)

                  })
                
                Spacer()
            }
        }
    }
}



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
