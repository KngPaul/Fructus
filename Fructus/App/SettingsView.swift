//
//  SettingsView.swift
//  Fructus
//
//  Created by Paul Onawola on 19/05/2024.
//

import SwiftUI


struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fibre, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    } label: {
                        SettingsLabelView(label: "Fructus", icon: "info.circle")
                        
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox {
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggling the switch in the box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(.secondary)
                                
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                    } label: {
                        SettingsLabelView(label: "Customization", icon: "paintbrush")
                        
                    }

                    // MARK: - SECTION 3
                    GroupBox {
                            SettingsRowView(label: "Developer", content: "Paul")
                            SettingsRowView(label: "Designer", content: "Paul")
                            SettingsRowView(label: "Compatibility", content: "iOS 15")
                            SettingsRowView(label: "Website", content: "Fructus", link: "https://wikipedia.com")
                            SettingsRowView(label: "X / Twitter", content: "Paul", link: "https://twitter.com/KngPaul0")
                            SettingsRowView(label: "SwiftUI", content: "2.0")
                            SettingsRowView(label: "Version", content: "1.0.1")

                    } label: {
                        SettingsLabelView(label: "Application", icon: "apps.iphone")
                    }
                    
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            dismiss()
                            
                        } label: {
                            Image(systemName: "xmark")
                            
                        }
                        
                    }
                    
                }
                .padding()
                
            }
            .scrollIndicators(.hidden)
            
        }
        
    }
}

#Preview {
    SettingsView()
}
