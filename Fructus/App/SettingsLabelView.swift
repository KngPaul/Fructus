//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Paul Onawola on 19/05/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    var label: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: icon)
            
        }
        
    }
}

#Preview {
    SettingsLabelView(label: "Fructus", icon: "info.circle")
}
