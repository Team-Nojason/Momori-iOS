import SwiftUI
import KakaoSDKUser

struct KakaoLogin: View {
    @State private var userName = ""
    @State private var userMail = ""
    @State private var profileImage = ""
    
    
    var body: some View {
//        Button(action: {
//            
//        }, label: {
//            Image("Kakao")
//                .resizable()
//                .frame(width: 70, height: 55, alignment: .center)
//                .background(Color.white)
//                .clipShape(Circle())
//                .padding(10)
//                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 1, y: 2) // 그림자 추가
//        })
        
        Button(action: {
            if UserApi.isKakaoTalkLoginAvailable() {
                UserApi.shared.loginWithKakaoTalk { oauthToken, error in
                    if let token = oauthToken {
                        print(token)
                    } else if let error = error {
                        print(error)
                    }
                }
            } else {
                UserApi.shared.loginWithKakaoAccount { oauthToken, error in
                    if let token = oauthToken {
                        print(token)
                    } else if let error = error {
                        print(error)
                    }
                }
            }
        }) {
            Image("Kakao")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 50, alignment: .center)
                .background(Color.white)
                .clipShape(Circle())
                .padding(10)
                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 1, y: 2) // 그림자 추가
        }
    }
}
