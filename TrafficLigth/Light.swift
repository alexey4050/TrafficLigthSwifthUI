//
//  Light.swift
//  TrafficLigth
//
//  Created by testing on 12.12.2023.
//

import SwiftUI

struct Light: View {
    let color: Color
    let wigth: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: wigth)
                .overlay(Circle()
                    .stroke(Color.white, lineWidth: 2))
        }
    }
}

#Preview {
    Light(color: .red, wigth: 150)
}
