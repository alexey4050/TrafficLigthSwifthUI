//
//  NextButton.swift
//  TrafficLigth
//
//  Created by testing on 12.12.2023.
//

import SwiftUI

struct NextButton: View {
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text("Next")
                .font(.largeTitle)
                .padding()
                .frame(width: 250, height: 70)
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(15)
        }
    }
}

#Preview {
    NextButton(action: {})
}
