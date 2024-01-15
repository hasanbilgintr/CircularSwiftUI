//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by hasan bilgin on 14.11.2023.
//

import SwiftUI

struct Circular: View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    //% kaçı dolu görüncek
    let percentage : Double
    var body: some View {
        //animasyon ekliceğimiz için  geometri okuyucusu
        GeometryReader { geometry in
            //z ekseninte konulabilen stacktir
            ZStack {
                //direk yuvarlak vericektiren başta
                CircularShape()
                //dış et kalılığı
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                //içersine renk konabilmesi için fill ekledik
                    .fill(backgroundColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }
            //animasyon ekleme
            //easeIn bizim yaptığımız saat yönü doldurma diyebiliriz
            //easeOut ise tamm tersi
            //linear , timingCurve vs....
            //1.0 1sn demek
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth / 1.5)
        }
    }
}

#Preview {
    // Color.red ile .red aynı
    Circular(lineWidth: 10, backgroundColor: Color.red, foregroundColor: .green, percentage: 50)
}
