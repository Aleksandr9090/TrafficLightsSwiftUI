//
//  ChangeColorButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Aleksandr on 30.10.2022.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
        
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "Start", action: {})
    }
}
