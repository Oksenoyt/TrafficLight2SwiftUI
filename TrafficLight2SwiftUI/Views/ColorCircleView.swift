//
//  ColorCircleView.swift
//  TrafficLight2SwiftUI
//
//  Created by Elenka on 09.09.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 130, height: 130)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
