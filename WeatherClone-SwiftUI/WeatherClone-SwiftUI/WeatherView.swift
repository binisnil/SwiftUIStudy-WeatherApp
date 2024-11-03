//
//  WeatherView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 9/23/24.
//

import SwiftUI

struct WeatherView: View {
    
    var body: some View {
        ZStack {
            Image("img_background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                TopWeatherView()
                WeatherTimelineView()
                    
                    .background(Color(hex: 0xFFFFFF, alpha: 0.03))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.gray.opacity(0.25), lineWidth: 0.5)
                    )
                    .frame(height: 212)
                    .cornerRadius(15)
                    .padding(.horizontal, 20)
            }
        }
    }
}

#Preview {
    WeatherView()
}
