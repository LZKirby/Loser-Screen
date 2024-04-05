//
//  ContentView.swift
//  bs
//
//  Created by leiland kirby on 10/3/23.
//
import SwiftUI
import EffectsLibrary

struct ContentView: View {
    @State private var animationAmount = 1.0
    var config = ConfettiConfig(content: [
        .emoji("💩", 1),
        .emoji("☹️", 1),
        .emoji("👎", 1)
    ],
    intensity: .high,
    lifetime: .long,
    initialVelocity: .fast,
    fadeOut: .slow,
    spreadRadius: .high)
    
    var body: some View {
        VStack {
            //SnowView()
                   //RainView()
                   //FireView()
                   //FireworksView()
                   //SmokeView()
            ConfettiView(config: config)

            Text("LOSER😢")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.084, saturation: 1.0, brightness: 0.435))
                .position(CGPoint(x: 200.0, y: 10.0))
            
            
            Text("")
            
                        
        }
        .scaleEffect(animationAmount)
        .animation(.easeOut(duration: 1)
            .repeatCount(4, autoreverses: true), value: animationAmount)
        .onAppear{
            animationAmount += 1
        }
        .padding(.bottom, 200)
        Spacer()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

