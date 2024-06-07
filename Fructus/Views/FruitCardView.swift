//
//  FruitCardView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                // Title
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                // Headline
                Text(fruit.headline)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button
                StartButtonView()
                    .offset(y: 20)
                
            }
            
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
        .background(
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 20)
        .padding(.vertical, 50)
        
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
}
