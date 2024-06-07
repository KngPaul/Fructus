//
//  ContentView.swift
//  Fructus
//
//  Created by Paul Onawola on 18/05/2024.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        // MARK: - FOR iOS AND iPadOS
//        NavigationSplitView {
//            List {
//                ForEach(fruits.shuffled()) { fruit in
//                    NavigationLink {
//                        FruitDetailView(fruit: fruit)
//                    } label: {
//                        FruitRowView(fruit: fruit)
//                            .padding(.vertical, 4)
//                    }
//                    
//                }
//                
//            }
//            .navigationTitle("Fruits")
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        isShowingSettings = true
//                        
//                    } label: {
//                        Image(systemName: "gear")
//                        
//                    }
//                    
//                }
//                
//            }
//            .sheet(isPresented: $isShowingSettings) {
//                SettingsView()
//            }
//        } detail: {
//            EmptyView()
//        }

        // MARK: - FOR iOS ONLY
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }

                }
                
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                        
                    } label: {
                        Image(systemName: "gear")

                    }
                    
                }
                
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
            
        }

    }
}

#Preview {
    ContentView()
}
