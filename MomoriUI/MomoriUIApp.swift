//
//  MomoriUIApp.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct MomoriUIApp: App {
    init() {
           // Kakao SDK 초기화
           KakaoSDK.initSDK(appKey:"[858e9e793fc6c3f9b315843f39f9cca9]")
       }
       
    var body: some Scene {
        WindowGroup {
                    ContentView()
                        .onOpenURL { url in
                            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                                _ = AuthController.handleOpenUrl(url: url)
                            }
                        }
                }
            }
        }
