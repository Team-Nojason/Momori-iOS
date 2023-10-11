//
//  ViewModel..swift
//  Momori
//
//  Created by dgsw8th61 on 2023/10/09.
//

import Foundation
import Firebase
import FirebaseAuth

class ViewModel: ObservableObject {
    @Published var state: SignInState = .signedOut

    enum SignInState{
        case signedIn
        case signedOut
    }
    
    func emailAuthSignIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("error: \(error.localizedDescription)")
                
                return
            }
            
            if result != nil {
                self.state = .signedIn
                print("사용자 이메일: \(String(describing: result?.user.email))")
                print("사용자 이름: \(String(describing: result?.user.displayName))")

            }
        }
    }
    
    func emailAuthSignUp(email: String, userName: String, password: String) -> Int? {
        var resultValue: Int?
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("error: \(error.localizedDescription)")
                resultValue = nil
                return
            }
            
            if result != nil {
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = userName
                print("사용자 이메일: \(String(describing: result?.user.email))")
                
                // 회원가입 성공 시 특정 값을 할당
                resultValue = 1
            }
        }
        
        return resultValue // Int? 타입의 값을 반환합니다.
    }
}
