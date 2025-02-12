//
//  FloverView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 12.02.2025.
//

import SwiftUI

struct FloverView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            ZStack{
                ForEach(0..<6) { iteration in
                    
                    Path { path in
                        path.move(to: CGPoint(x: middle, y: middle))
                        path.addQuadCurve(
                            to: CGPoint(x: size, y: middle),
                            control: CGPoint(x: size, y: 0)
                        )
                        path.addQuadCurve(
                            to: CGPoint(x: middle, y: middle),
                            control: CGPoint(x: size, y: size)
                        )
                        path.addLine(to: CGPoint(x: middle, y: middle * 0.99))
                    }
                    .fill(.cyan)
                    .opacity(0.1)
                    .rotationEffect(.degrees(Double(iteration) * 60))
                }
            }
        }
    }
}

#Preview {
    FloverView()
        .frame(width: 300, height: 300)
}
