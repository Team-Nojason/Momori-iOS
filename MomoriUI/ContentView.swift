//
//  ContentView.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            KakaoMapVCWrapper()
                .edgesIgnoringSafeArea(.all)
            
            MainPage()
        }
    
    }
}

#Preview {
    ContentView()
}
