//
//  UserNamebar.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/17/23.
//

import SwiftUI

struct UserNamebar: View {

    var body: some View {
        HStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 350, height: 45)
                .cornerRadius(10, corners: [.topLeft, .topRight]) 
                .overlay {
                    HStack(alignment: .top){// 프로필 시작
                        Image("Profile")
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.small)
                            .frame(width: 25, height: 25, alignment: .center)
                            .cornerRadius(50)
                            .overlay {
                                Circle().stroke(.white, lineWidth: 2)
                            }
                            .padding(EdgeInsets(top:10, leading: 0, bottom: 10, trailing: 290))

                        
                    }// 프로필
                    
                    Text("사용자 이름")
                        .font(.system(size: 13))
                        .padding(.trailing,170)
                    
                    Text("11시간 전")
                        .font(.system(size: 10))
                        .padding(.leading,210)
                        .foregroundColor(Colors.Gray1.color)
                    
                    
                    
                    
                    Button(action: {
                        // 화면 닫히는 binding 변수 불러오기..
                    }, label: {
                        Image(systemName: "multiply")
                            .resizable()
                            .frame(width: 14,height: 14)
                            .padding(.leading,290)
                            .foregroundColor(Colors.Gray1.color)
                            
                    })
                }
        }
    }
}

struct CustomCornersShape: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = []
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners : UIRectCorner) -> some View {
        clipShape(CustomCornersShape(radius : radius, corners : corners))
    }
}


#Preview {
    UserNamebar()
}
