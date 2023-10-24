////
////  UserLogin.swift
////  Momori
////
////  Created by dgsw8th61 on 2023/10/09.
////
//
//import SwiftUI
//
//struct UserLogin: View {
//    @State var emailText: String = ""
//    @State var passwordText: String = ""
//    @State var signInProcessing: Bool = false
//
//    var body: some View {
//        NavigationStack {
//            VStack(spacing: 15) {
//                Text("Momori")
//                    .font(.system(size: 25))
//                    .bold()
//                    .padding(10)
//                Text("로그인")
//                    .font(.system(size: 20))
//                
//                    VStack {
//                        TextField("이메일을 입력하세요", text: $emailText)
//                            .padding()
//                            .background(.thinMaterial)
//                            .cornerRadius(10)
//                            .textInputAutocapitalization(.never)
//                        SecureField("비밀번호를 입력하세요", text: $passwordText)
//                            .padding()
//                            .background(.thinMaterial)
//                            .cornerRadius(10)
//                            .padding(.bottom, 30)
//                    }
//                
//                    
//                    // 로그인 접속중에 signInProcessing = false 이거나 유저 정보가 비어있다면
//                    if signInProcessing {
//                        ProgressView()
//                    }
//                
//            
//                Button {
//                    signInProcessing = true
//                    let viewModel = ViewModel() // ViewModel 인스턴스 생성
//                    viewModel.emailAuthSignIn(email: emailText, password: passwordText) // emailAuthSignIn 메서드 호출
//                } label: {
//                    Text("로그인")
//                        .padding()
//                        .foregroundColor(.white)
//                        .background(emailText.isEmpty || passwordText.isEmpty == true ? .gray : .red)
//                        .cornerRadius(10)
//                        .padding(.bottom, 40)
//                }
//                .disabled(emailText.isEmpty || passwordText.isEmpty ? true : false)
//                .padding()
//
//                // 회원가입 View로 이동
//                VStack {
//                    Text("회원가입을 안하셨나요?")
//                        .padding(.bottom,10)
//                    
//                    NavigationLink {
//                        SignIn()
//                    } label: {
//                        HStack {
////                            Image(systemName: "arrow.up.forward")
//                            
//                            Text("회원가입하기")
//                                .foregroundColor(.white)
//                                .padding()
//                                .frame(maxWidth: .infinity)
//                                .frame(height: 50)
//                                .background(.black)
//                                .cornerRadius(10)
//                            
//                        }
//                        
//                    }
//                }
//                
//            }
//            .padding()
//        }
//    }
//}
//
//
//struct UserLogin_Previews: PreviewProvider {
//    static var previews: some View {
//        UserLogin()
//    }
//}
