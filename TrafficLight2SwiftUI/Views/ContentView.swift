//
//  ContentView.swift
//  TrafficLight2SwiftUI
//
//  Created by Elenka on 09.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redColorOpacity = 0.4
    @State private var yellowColorOpacity = 0.4
    @State private var greenColorOpacity = 0.4
    @State private var textButton = "START"
    
    @State private var includedColor = 0
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red).opacity(redColorOpacity)
                ColorCircleView(color: .yellow).opacity(yellowColorOpacity)
                ColorCircleView(color: .green).opacity(greenColorOpacity)
                Spacer()
                startButton
            }
            .padding(10)
        }
    }
    
    private var startButton: some View {
        Button(action: changeButtonTapped) {
            Text(textButton)
                .frame(width: 130, height: 40)
                .cornerRadius(13)
                .accentColor(Color.white)
                .background(Color.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white,lineWidth: 4))
        }
    }
    
    private func changeButtonTapped() {
        textButton = "NEXT"
        
        switch includedColor {
        case 1:
            yellowColorOpacity = 1.0
            redColorOpacity = 0.4
            includedColor = 2
        case 2:
            greenColorOpacity = 1.0
            yellowColorOpacity = 0.4
            includedColor = 3
        default:
            redColorOpacity = 1.0
            greenColorOpacity = 0.4
            includedColor = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
