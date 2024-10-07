//
//  MainView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 9/23/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        @State var tabStatus: Tab = .main
            ZStack {
                WeatherView()
                BottomTabView(selectedTab: $tabStatus)
                    .background(Color.clear)
                    .offset(x: 0, y: (UIScreen.main.bounds.height / 2) - 78)
        }
    }
}

#Preview {
    MainView()
}
