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
        VStack(spacing: 0) {
                WeatherView()
                BottomTabView(selectedTab: $tabStatus)
                    .background(Color(hex: 0x2A3040))
        }
    }
}

#Preview {
    MainView()
}
