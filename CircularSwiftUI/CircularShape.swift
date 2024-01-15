//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by hasan bilgin on 13.11.2023.
//

import Foundation
import SwiftUI

//normal class için için View kaldırılabilir.....
//struct CircularShape: View {
//Shape eklendi
struct CircularShape: Shape {
    //SwiftUI çıkarmak için normal class yapmak için bunları kaldırsak yeterli
    //normal class için kaldırıldı
//    var body: some View {
//        Text("Hello World")
//    }
    
    //%de kaçı dolun görüncek olan data
    var percent : Double
    //başlangıç açısı
    var startAngle : Double
    
    
    //Animasyon için eklenenler
    //Double çünkü precent ile ilerlediğimiz için
    typealias AnimatableData = Double
    
    var animatableData: Double {
        get {
            //percent verdik
            return percent
        }
        set {
            //persent değiirse yeni değer ver demek
            percent = newValue
        }
    }
    
    //başlangıç açısı kordinat nasılsa öle saat gibi düşünürsek 9 da oda -90 dır
    init(percent: Double = 100, startAngle: Double = -90) {
        self.percent = percent
        self.startAngle = startAngle
    }
    
    //Çizilcek olan şeklin yolunu belirtir
    func path(in rect: CGRect) -> Path {
        
        //ekran genişliği alır
        let width = rect.width
        let height = rect.height
        //yarıçap elipsse bu şekilde min alabilir ama zaten daire olmasını tercih ederiz
        let radius = min(width,height) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endAngle = (self.percent / 100 * 360) + self.startAngle
        
        return Path { path in
            //center  şeklin merkezi
            //radius yarıçağı ne kadar olcak
            //startAngle Başlangıç açısı
            //endAngle bitiş açısı ne olcak
            //clockwise saat yönündemi gidicek
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: startAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
        }
    }
    

    
}

//normal class için kaldırıldı
//struct CircularShape_Previews: PreviewProvider {
//    static var previews: some View {
//        CircularShape()
//    }
//}




