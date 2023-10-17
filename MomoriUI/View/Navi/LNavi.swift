//
//  LNavi.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/14/23.
//

import SwiftUI




struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct LNavi: View {
    
    var body: some View {
        ZStack{
            CustomCorners(corners: [.topLeft, .bottomLeft], radius: 10)
                .frame(width: 55, height: 55)
                .foregroundColor(Color.white)
                .shadow(color:.black.opacity(0.1),radius :2,x :-2,y :2)
//                .cornerRadius(10)
            
            Image(systemName: "gearshape")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(Colors.Mint.color)
        }
    }
}


#Preview {
    LNavi()
}
