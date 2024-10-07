//
//  MainView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 9/23/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var tabStatus: Tab = .main

    var body: some View {
            ZStack {
                WeatherView()
                BottomTabView(selectedTab: $tabStatus)
                    .background(Color.clear)
                    .offset(x: 0, y: (UIScreen.main.bounds.height / 2) - 60)
                
                WeatherTimelineView()
                    .background(Color.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.gray.opacity(0.25), lineWidth: 0.5)
                    )
                    .frame(height: 212)
                    .padding(.horizontal, 20)
        }
    }
}

#Preview {
    MainView()
}
