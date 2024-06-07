//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
            
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[5])
}
