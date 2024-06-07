//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Paul Onawola on 20/05/2024.
//

import SwiftUI

struct SettingsRowView: View {
    var label: String
    var content: String
    var link: String?
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            
            LabeledContent {
                if link != nil {
                    HStack {
                        Link(content, destination: URL(string: link!)!)
                        Image(systemName: "arrow.up.right.square")
                        
                    }
                } else {
                    Text(content)
                        .foregroundStyle(.primary)
                }
                
            } label: {
                Text(label)
                    .foregroundStyle(.secondary)
                
            }
            
        }
        
    }
}

#Preview {
    SettingsRowView(label: "Developer", content: "John / Jane")
}
