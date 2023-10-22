//
//  KakaoMapVCWrapper.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/22/23.
//

import Foundation
import SwiftUI

struct KakaoMapVCWrapper : UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController{
        return KakaoMapVC()
    }
    
    func updateUIViewController(_ uiViewController : UIViewControllerType, context:Context){
        
    }
}


class KakaoMapVC: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID,#function,#line,"- ")
        
        let mapView = MTMapView(frame : self.view.frame)
        mapView.baseMapType = .hybrid
        
        self.view.addSubview(mapView)
        
        
    }
    
}
