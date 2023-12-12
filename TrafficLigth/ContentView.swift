//
//  ContentView.swift
//  TrafficLigth
//
//  Created by testing on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var greenLigthOn = false
    @State private var yellowLigthOn = false
    @State private var redLigthOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            Light(color: redLigthOn ? .red.opacity(1.0) : .red.opacity(0.3), wigth: 150)
            Light(color: yellowLigthOn ? .yellow.opacity(1.0) : .yellow.opacity(0.3), wigth: 150)
            Light(color: greenLigthOn ? .green.opacity(1.0) : .green.opacity(0.3), wigth: 150)
            Spacer()
            NextButton(action: {
                switch (redLigthOn, yellowLigthOn, greenLigthOn) {
                case (true, false, false):
                    redLigthOn = false
                    yellowLigthOn = true
                case (false, true, false):
                    yellowLigthOn = false
                    greenLigthOn = true
                default:
                    greenLigthOn = false
                    redLigthOn = true
                    
                }
            }) 
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
