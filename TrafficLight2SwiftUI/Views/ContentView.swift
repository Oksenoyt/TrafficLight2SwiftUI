//
//  ContentView.swift
//  TrafficLight2SwiftUI
//
//  Created by Elenka on 09.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    private var includedColor = "not included"
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red).id(1)
                ColorCircleView(color: .yellow).id(2)
                ColorCircleView(color: .green)
                Spacer()
                Button(action: changeButtonTapped) {
                    Text("START")}
                        .foregroundColor(.blue)
                        .foregroundColor(.white)
                
            }
            .padding()
        }
    }
}

private func changeButtonTapped() {
    changeButton.setTitle("NEXT", for: .normal)

    switch includedColor {
    case tag(1):
        ColorCircleView.id(1).alpha = 1
        redTrafficLightView.alpha = 0.3
        includedColor = "yellow"
    case "yellow":
        greenTrafficLightView.alpha = 1
        yellowTrafficLightView.alpha = 0.3
        includedColor = "green"
    default:
        redTrafficLightView.alpha = 1
        greenTrafficLightView.alpha = 0.3
        includedColor = "red"
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
