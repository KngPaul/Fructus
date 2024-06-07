//
//  OnboardingView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits.shuffled().prefix(upTo: 5)) { fruit in
                FruitCardView(fruit: fruit)
            }
            
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    OnboardingView()
}
