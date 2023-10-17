//
//  Colors.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/17/23.
//

import SwiftUI
extension Color {
    
    init(_ hex: Int, opacity: Double = 1.0) {
        let red = Double((hex >> 16) & 0xff) / 255
        let green = Double((hex >> 8) & 0xff) / 255
        let blue = Double((hex >> 0) & 0xff) / 255

        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

enum Colors {
    case Mint
    case Gray1
    case Gray2
    case Gray3
    
    var color: Color {
        switch self {
        case .Mint:
            return Color(0x07F6BD)
        
        case .Gray1:
            return Color(0xE4E4E5)
         
        case .Gray2:
            return Color(0xE4E4E5)
            
        case .Gray3:
            return Color(0xB8B8BC)
            
       
        }
    }
}
