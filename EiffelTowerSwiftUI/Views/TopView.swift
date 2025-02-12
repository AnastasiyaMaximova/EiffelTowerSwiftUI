//
//  TopView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 11.02.2025.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.24
            let farLine = size * 0.6
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine * 0.3 , y: height * 0.95))
                path.addLine(to: CGPoint(x: farLine * 0.9, y: farLine))
                path.addLine(to: CGPoint(x: middle - farLine / 10, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.4, y: height * 0.95))
            }
            .stroke(.black, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: middle * 0.98, y: nearLine * 1.9))
                path.addLine(to: CGPoint(x: middle * 0.98, y: farLine * 0.9))
            }
            .stroke(.black, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine * 0.2, y: farLine))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.2, y: farLine * 0.9))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.3, y: farLine * 0.9))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.3, y: farLine))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.2, y: farLine))
            }
            .stroke(.black, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine * 0.55, y: height * 0.95))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.55, y: height))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.65, y: height))
                path.addLine(to: CGPoint(x: middle - nearLine * 0.65, y: height * 0.95))
                path.addLine(to: CGPoint(x: middle + nearLine * 0.55, y: height * 0.95))
            }
            .stroke(.black, lineWidth: 3)
        }
    }
}

#Preview {
    TopView()
    .frame(width: 300, height: 300)
}
