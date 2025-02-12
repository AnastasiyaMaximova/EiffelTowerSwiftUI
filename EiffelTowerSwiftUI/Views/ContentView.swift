//
//  ContentView.swift
//  EiffelTowerSwiftUI
//
//  Created by Anastasya Maximova on 11.02.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTapped = true
    var body: some View {
        VStack {
            Button(action: {}) {
                Text ("Build a Tower")
                    .font(.title)
            }
            Spacer()
            
            if buttonTapped {
                VStack {
                    TopView()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, -112)
                    MiddleView()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, -84)
                    FoundationView()
                        .frame(width: 200, height: 200)
                }
                Spacer()
                
                
                
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
