//
//  RNavi.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI

struct RNavi: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 55, height: 55)
                .foregroundColor(Colors.Mint.color)
                .cornerRadius(10)

            Image(systemName: "pencil")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(Color.white)
        }
        
    }
}

#Preview {
    RNavi()
}
