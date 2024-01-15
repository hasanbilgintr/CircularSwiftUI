//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by hasan bilgin on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    var body: some View {
        ZStack {
            //Color.blue.opacity(0.2) %20lik bir trasnparan yapmak 1 verilirse transparan olmaz
            Circular(lineWidth: 40, backgroundColor: .blue.opacity(0.2), foregroundColor: .blue, percentage: firstCirclePercentage)
                .frame(width: 350,height: 350)
            //denemek amaçlı tıklandığında çalışmasını isteyelim
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 50
                    }else{
                        self.firstCirclePercentage = 0 
                    }
                }
            Circular(lineWidth: 40, backgroundColor: .red.opacity(0.2), foregroundColor: .red, percentage: secondCirclePercentage)
                .frame(width: 250,height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 75
                    }else{
                        self.secondCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 40, backgroundColor: .green.opacity(0.2), foregroundColor: .green, percentage: thirdCirclePercentage)
                .frame(width: 150,height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 100
                    }else{
                        self.thirdCirclePercentage = 0
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
