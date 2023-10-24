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
    @State private var isGLoggedin = false
    
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
                
                
                
                
                
                Spacer()
                
                
                if !isGLoggedin{
                    GoogleSignIn(isGLogined:$isGLoggedin,
                                 userData: UserData(url: URL(string:""), name:"", email:""))
                }else{
                    NavigationLink(destination : MainPage()){
                        GoogleSignIn(isGLogined:$isGLoggedin,
                                     userData: UserData(url: URL(string:""), name:"", email:""))
                    }
                }
            }
        }
    }
}



#Preview {
    Login()
}
