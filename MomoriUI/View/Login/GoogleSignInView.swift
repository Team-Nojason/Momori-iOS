//
//  GoogleSignIn.swift
//  b8ndDiary
//
//  Created by dgsw8th61 on 2023/10/04.
//

//
//  GoogleSignIn.swift
//  b8ndDiary
//
//  Created by dgsw8th61 on 2023/10/04.
//

import SwiftUI
import GoogleSignIn
import GoogleSignInSwift

struct GoogleSignInView: View {
    @Binding var isGLogined: Bool
    @State private var userData: UserData
    @State private var isAlert = false
    @Environment(\.presentationMode) var presentationMode
    
    public init(isGLogined: Binding<Bool>, userData: UserData) {
        _isGLogined = isGLogined
        _userData = State(initialValue: userData)
    }
    
    var body: some View {
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
        .alert(LocalizedStringKey("로그인 실패"), isPresented: $isAlert) {
            Text("확인")
        } message: {
            Text("다시 시도해주세요")
        }
    }
    
    func googleLogin() {
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else { return }
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
            DispatchQueue.main.async {
                presentationMode.wrappedValue.dismiss()  // MainPage로 이동
            }
        }
    }
}


//#Preview {
//    GoogleSignIn(isLogined:$isLoggedin,
//                 userData: UserData(url: URL(string:""), name:"", email:""))
//}
