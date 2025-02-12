//
//  FoundationView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 11.02.2025.
//

import SwiftUI

struct FoundationView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.2
            let farLine = size * 0.8
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: middle))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: middle))
            }
            .stroke(.black, lineWidth: 3)
            
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine * 1.2, y: middle * 0.8))
                path.addLine(to: CGPoint(x: middle + nearLine * 1.2, y: nearLine * 2.5))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.2, y: nearLine * 2.5))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.2, y: middle * 0.8))
                path.addLine(to: CGPoint(x: middle + nearLine * 1.2, y: middle * 0.8))            }
            .stroke(.black, lineWidth: 3)
        
            Path { path in
                path.move(to: CGPoint(x: 0, y: height))
                path.addLine(to: CGPoint(x: 0, y: farLine))
                path.addLine(to: CGPoint(x: width, y: farLine))
                path.addLine(to: CGPoint(x: width, y: height))
                path.addLine(to: CGPoint(x: 0, y: height))
            }
            .stroke(.green, lineWidth: 3)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.yellow, .green]),
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0)
                    )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle, y: height - nearLine),
                    radius: nearLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(180),
                    clockwise: true)
            }
            .stroke(.black, lineWidth: 3)
            
            
        }
    }
}

#Preview {
    FoundationView()
        .frame(width: 300, height: 300)
}
