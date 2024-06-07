//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Proteins", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    
                    LabeledContent {
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                        
                    } label: {
                        Label(nutrients[index], systemImage: "info.circle")
                            .padding(.trailing, 25)
                            .foregroundStyle(fruit.gradientColors[1])
                            .font(.body.bold())
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[12])
}
