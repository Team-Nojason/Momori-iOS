//
//  Circle.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 11/7/23.
//

import SwiftUI
struct mmCircle : View {
    var body: some View {
        ZStack {
            Rectangle()
            .foregroundColor(.clear)
            .frame(width: 270, height: 270)
            .background(Color(red: 0.26, green: 1, blue: 0.82).opacity(0.23))

            .cornerRadius(270)
            .overlay(
            RoundedRectangle(cornerRadius: 270)
            .inset(by: 1)
            .stroke(Color(red: 0.03, green: 1, blue: 0.65), lineWidth: 2)

            )
            Image("mCircle")
            .frame(width: 25, height: 24)
            
        }

    }
}
#Preview{
    Circle()
}
