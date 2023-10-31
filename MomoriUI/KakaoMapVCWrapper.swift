//
//  KakaoMapVCWrapper.swift
//  MomoriUI
//
//  Created by dgsw8th61 on 10/22/23.
//

import Foundation
import SwiftUI
//import KakaoMapsSDK

struct KakaoMapVCWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return KakaoMapVC()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

class KakaoMapVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function, #line, "-")
        
        let mapView = MTMapView(frame: self.view.frame)
        mapView.baseMapType = .standard
        
        self.view.addSubview(mapView)
        
        // 중앙에 원 추가
//        let center = MTMapPointGeo(latitude: 37.5665, longitude: 126.9780) // 중앙 좌표 설정
//        let circle = MTMapCircle(center: center, radius: 1000) // 반지름 1000m인 원 생성
//        circle.circleColor = UIColor.red.withAlphaComponent(0.5) // 원의 색상 및 투명도 설정
//        mapView.addCircle(circle) // 원을 지도에 추가
    }
}
