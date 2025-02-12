//
//  MiddleView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 11.02.2025.
//

import SwiftUI

struct MiddleView: View {

        var body: some View {
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middle = size / 2
                let nearLine = size * 0.24
                let farLine = size * 0.6
                
                Path { path in
                    path.move(to: CGPoint(x: middle + nearLine * 0.7 , y: height * 0.95))
                    path.addLine(to: CGPoint(x: farLine, y: farLine))
                    path.addLine(to: CGPoint(x: middle - farLine / 5, y: farLine))
                    path.addLine(to: CGPoint(x: middle - nearLine * 0.7, y: height * 0.95))
                }
                .stroke(.black, lineWidth: 3)
                
                Path { path in
                    path.move(to: CGPoint(x: middle + nearLine * 0.3 , y: height * 0.95))
                    path.addLine(to: CGPoint(x: farLine * 0.85, y: farLine))
                    path.addLine(to: CGPoint(x: middle - farLine / 15, y: farLine))
                    path.addLine(to: CGPoint(x: middle - nearLine * 0.3, y: height * 0.95))
                }
                .stroke(.black, lineWidth: 3)
                
                Path { path in
                    path.move(to: CGPoint(x: middle + nearLine * 0.5, y: farLine))
                    path.addLine(to: CGPoint(x: middle + nearLine * 0.5, y: farLine * 0.9))
                    path.addLine(to: CGPoint(x: middle - nearLine * 0.6, y: farLine * 0.9))
                    path.addLine(to: CGPoint(x: middle - nearLine * 0.6, y: farLine))
                    path.addLine(to: CGPoint(x: middle + nearLine * 0.5, y: farLine))
                }
                .stroke(.black, lineWidth: 3)
                
                Path { path in
                    path.move(to: CGPoint(x: middle + nearLine, y: height * 0.95))
                    path.addLine(to: CGPoint(x: middle + nearLine, y: height))
                    path.addLine(to: CGPoint(x: middle - nearLine, y: height))
                    path.addLine(to: CGPoint(x: middle - nearLine, y: height * 0.95))
                    path.addLine(to: CGPoint(x: middle + nearLine, y: height * 0.95))            }
                .stroke(.black, lineWidth: 3)
                
            }
        }
    }


#Preview {
    MiddleView()
        .frame(width: 300, height: 300)
}
