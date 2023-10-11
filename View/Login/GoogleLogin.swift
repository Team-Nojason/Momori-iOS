//  ContentView.swift
//  GoogleLogin
//
//  Created by dgsw8th61 on 2023/10/02.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct GoogleLogin: View {
    
@State private var isLogin = false
// 로그인 상태
@State private var isLogined = false
// 유저 데이터
@State private var userData:UserData
// 팝업용
@State private var isAlert = false

   public init(isLogined: Bool = false, userData: UserData) {
       _isLogined = State(initialValue: isLogined)
       _userData = State(initialValue: userData)
   }
var body: some View {
 
    NavigationStack {
        VStack{
            Login()
        }
        
        NavigationLink(
          destination: UserLogin(),
          isActive: $isLogin,
          label: {
              HStack(spacing: 4) {
                  ZStack {
                      Text("로그인")
                          .bold()
                          .foregroundColor(.black)
                          .font(.system(size: 15))
                          .padding(11)
                          .padding(.horizontal,120)
                          .background(Color.white)
                          .cornerRadius(3)
                          // 그림자 설정
                          .shadow(color: Color.black.opacity(0.5), radius: 3, x: 1, y: 2)
                  }
              }

                     

                  
          }
          )
         

          
     
     
        Spacer()
               ZStack {
                   GoogleSignInButton(
                       scheme: .light,
                       style: .wide,
                       action: {
                           googleLogin()
                       })
                   .frame(width: 300, height: 60, alignment: .center)
                   .padding(20)
               }
               .navigationDestination(isPresented: $isLogined, destination: { MyPageView(userData: $userData) })
           }
           .onAppear(perform: {
               // 로그인 상태 체크
               checkState()
           })
           .alert(LocalizedStringKey("로그인 실패"), isPresented: $isAlert) {
               Text("확인")
           } message: {
               Text("다시 시도해주세요")
           }
       }
       // 상태 체크
       func checkState() {
           GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
               if error != nil || user == nil {
                   // 로그아웃 상태
                   print("Not Sign In")
               } else {
                   // 로그인 상태
                   guard let profile = user?.profile else { return }
                   let data = UserData(url: profile.imageURL(withDimension: 180), name: profile.name, email: profile.email)
                   userData = data
                   isLogined = true
                   print(isLogined)
               }
           }
       }
       // 구글 로그인
       func googleLogin() {
           // rootViewController
           guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else { return }
           // 로그인 진행
           GIDSignIn.sharedInstance.signIn(withPresenting: presentingViewController) { signInResult, error in
               guard let result = signInResult else {
                   isAlert = true
                   return
               }
               guard let profile = result.user.profile else { return }
               let data = UserData(url: profile.imageURL(withDimension: 180), name: profile.name, email: profile.email)
               userData = data
               isLogined = true
           }
       }
   }
struct GoogleLogin_Previews: PreviewProvider {
static var previews: some View {
GoogleLogin(userData: UserData(url: nil, name: "", email: ""))
}
}
