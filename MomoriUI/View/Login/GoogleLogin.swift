//
//  GoogleSignIn.swift
//  b8ndDiary
//
//  Created by dgsw8th61 on 2023/10/04.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift



struct GoogleSignIn: View {
    // 로그인 상태
//    @State private var isLogined = false
    @Binding var isGLogined: Bool
    // 유저 데이터
    @State private var userData:UserData
    // 팝업용
    @State private var isAlert = false
    
    public init(isGLogined: Binding<Bool>, userData: UserData) {
            _isGLogined = isGLogined
            _userData = State(initialValue: userData)
        }
        
    var body: some View {
        
        NavigationStack {

            ZStack {
                Button(action: googleLogin) {
                                   Image("Google_logo")  // Replace with your Google logo image name.
                                       .resizable()
                                       .frame(width: 70, height: 50, alignment: .center)
                                       .background(Color.white)
                                       .clipShape(Circle())
                               }
                               .padding(20)
            }
//            .navigationDestination(isPresented: $isLogined, destination: {MainPage() })
//            
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
                isGLogined = true
                print(isGLogined)
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
            guard let idToken = signInResult?.user.idToken?.tokenString else {
                return
            }
            print(idToken)
            guard let profile = result.user.profile else { return }
            let data = UserData(url: profile.imageURL(withDimension: 180), name: profile.name, email: profile.email)
            userData = data
            isGLogined = true
        }
    }
}


//#Preview {
//    GoogleSignIn(isLogined:$isLoggedin,
//                 userData: UserData(url: URL(string:""), name:"", email:""))
//}
