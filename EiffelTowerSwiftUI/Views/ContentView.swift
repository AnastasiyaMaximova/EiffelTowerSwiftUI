//
//  ContentView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 11.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTapped = false
    @State private var angle = 0.0
    
    var body: some View {
        ZStack {
            ForEach(1..<5) { iteration in
                FloverView()
                    .frame(width: 380, height: 400)
                    .padding(.trailing, CGFloat(iteration) * 200)
                    .rotationEffect(.degrees(angle))
                    .animation(.linear(duration: TimeInterval(iteration * 5)).repeatForever(autoreverses: true), value: angle)
                    .onAppear{
                        withAnimation{
                            angle = 360
                        }
                    }
            }
            
            VStack {
                Button(action: buttonAction) {
                    Text (buttonTapped ?  "Destroy the Tower" : "Build a Tower")
                        .font(.title)
                }
                Spacer()
                
                VStack {
                    if buttonTapped {
                        TopView()
                            .frame(width: 200, height: 200)
                            .transition(.customTransition)
                            .padding(.bottom, -112)
                        
                        MiddleView()
                            .frame(width: 200, height: 200)
                            .padding(.bottom, -84)
                            .transition(.customTransition)
                        FoundationView()
                            .frame(width: 200, height: 200)
                            .transition(.customTransition)
                    }
                }
                Spacer()
            }
        }
    }
    
    private func buttonAction(){
        withAnimation {
            buttonTapped.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .top)
            .combined(with: .scale)
        let removal = AnyTransition.move(edge: .top)
            .combined(with: .scale)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}


#Preview {
    ContentView()
}
