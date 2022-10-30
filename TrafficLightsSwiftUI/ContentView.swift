//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Aleksandr on 30.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    
    @State private var buttonTitle = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3


    var body: some View {
        VStack {
            ColorCircleView(color: .red, opacity: redOpacity)
            
            ColorCircleView(color: .yellow, opacity: yellowOpacity)
                .padding()
            ColorCircleView(color: .green, opacity: greenOpacity)
            
            Spacer()
            
            ChangeColorButton(title: buttonTitle) {
                if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                trafficLightsChange()
            }
        }
        .padding()
    }
    
    private func trafficLightsChange() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            currentLight = .green
        case .green:
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum CurrentLight {
    case red, yellow, green
}
