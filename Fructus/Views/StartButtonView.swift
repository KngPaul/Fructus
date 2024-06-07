//
//  StartButtonView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.5)
            )
        }
        .accentColor(.white)

    }
}

#Preview {
    StartButtonView()
}
