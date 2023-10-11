//
//  UserData.swift
//  GoogleLogin
//
//  Created by dgsw8th61 on 2023/10/03.
//

import Foundation
import UIKit

struct UserData {
    let url:URL?
    let name:String
    let email:String
    
    init(url: URL?, name: String, email: String) {
        self.url = url
        self.name = name
        self.email = email
    }
}
