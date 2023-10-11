//
//  KaKaoMapVCWrapper.swift
//  Momori
//
//  Created by dgsw8th61 on 2023/10/10.
//

import Foundation
import SwiftUI

struct KaKaoMapVCWrapper :UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return KakaoMapVC()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
class KakaoMapVC : UIViewController{
    

    override func viewDidLoad() {
        self.viewDidLoad()
        
        print(#fileID,#function,#line,"- ")
        
        let mapView = MTMapView(frame: self.view.frame)
        mapView.baseMapType = .hybrid
        
        self.view.addSubview(mapView)
    }
}
