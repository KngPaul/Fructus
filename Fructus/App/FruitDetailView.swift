//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 20) {
                //Header
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    // Title
                    Text(fruit.title)
                        .font(.largeTitle.weight(.heavy))
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    // Headline
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    // Nutrients
                    FruitNutrientsView(fruit: fruit)
                    
                    // Sub Headline
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(fruit.gradientColors[1])
                    
                    // Description
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    // Link
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
                
            }
            
        }
        .ignoresSafeArea(edges: .top)
        .scrollIndicators(.hidden)
        
    }
}

#Preview {
    NavigationStack {
        FruitDetailView(fruit: fruitsData[1])
    }
}
