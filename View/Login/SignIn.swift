//
//  SignIn.swift
//  Momori
//
//  Created by dgsw8th61 on 2023/10/09.
//

import SwiftUI

struct SignIn: View {
    @State private var nameText: String = ""        // 이름 Text
    @State private var emailText: String = ""       // email Text
    @State private var passwordText: String = ""    // 패스워드 Text
    @State private var passwordConfirmText: String = ""   // 패스워드 확인 Text
    @State var isShowingProgressView = false                   // 로그인 비동기 ProgressView
    @State var isShowingAlert: Bool = false                     // 로그인 완료 Alert
    @State var isPasswordCountError: Bool = false               // 비밀번호 6자리 이상 확인
    @State var isPasswordUnCorrectError: Bool = false             // 비밀번호 텍스트 일치 확인
    @State var isEmailError: Bool = false                       // 이메일 에러
    @State var emailErrorText: String = ""                      // 이메일 에러 Text
    @EnvironmentObject var viewModel: ViewModel                 // ViewModel
    @Environment(\.dismiss) private var dismiss            // View전환
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                VStack {
                    Text("Momori")
                        .font(.system(size: 25))
                        .bold()
                        .padding(10)
                    Text("회원가입")
                        .font(.system(size: 20))
                }
                .lineSpacing(10)
                
                VStack(alignment: .leading) {
                    Text("이름")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    TextField("이름을 입력해주세요", text: $nameText)
                        .padding()
                        .background(.thinMaterial)
                        .cornerRadius(10)
                        .textInputAutocapitalization(.never)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("이메일")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    TextField("이메일을 입력해주세요", text: $emailText)
                        .padding()
                        .background(.thinMaterial)
                        .cornerRadius(10)
                        .textInputAutocapitalization(.never)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("비밀번호")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    SecureField("비밀번호를 6자리 이상 입력해주세요", text: $passwordText)
                        .padding()
                        .background(.thinMaterial)
                        .cornerRadius(10)
                    Text("비밀번호는 6자리 이상 입력해주세요.")
                        .font(.system(size: 15))
                        .foregroundColor(isPasswordCountError ? .red : .clear)
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("비밀번호 확인")
                        .font(.system(size: 15))
                        .opacity(0.5)
                    SecureField("비밀번호를 다시 입력해주세요", text: $passwordConfirmText)
                        .padding()
                        .background(.thinMaterial)
                        .border(.red, width: passwordConfirmText != passwordText ? 1 : 0)
                        .cornerRadius(10)
                    Text("비밀번호가 서로 다릅니다.")
                        .font(.system(size: 15))
                        .foregroundColor(isPasswordUnCorrectError ? .red : .clear)
                }
                .padding(.horizontal)
                
                // (1)
                Button {
                    isShowingProgressView = true // ProgressView 보이기
                    
                    if passwordText.count < 6 {
                        isPasswordCountError = true
                    }
                    if passwordConfirmText != passwordText {
                        isPasswordUnCorrectError = true
                    }
                    if passwordText.count >= 6 && passwordConfirmText == passwordText {
                        viewModel.emailAuthSignUp(email: emailText, userName: nameText, password: passwordText)
                        isShowingAlert = true
                    }
                } label: {
                    Text("회원 가입")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(!checkSignUpCondition() ? .gray : .blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .alert("회원가입", isPresented: $isShowingAlert) {
                            Button {
                                dismiss()
                            } label: {
                                Text("OK")
                            }
                        } message: {
                            Text("회원가입이 완료되었습니다.")
                        }
                        .padding()
                }
                .disabled(!checkSignUpCondition() ? true : false)
                
                //(2)
                if isShowingProgressView {
                    ProgressView()
                }
                
            }
        }
    }
    func checkSignUpCondition () -> Bool {
        if nameText.isEmpty || emailText.isEmpty || passwordText.isEmpty || passwordConfirmText.isEmpty {
            return false
        }
        return true
    }
}
struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
