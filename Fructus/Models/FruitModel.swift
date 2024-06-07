//
//  FruitModel.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
