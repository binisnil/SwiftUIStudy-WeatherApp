//
//  TopWeatherView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 10/7/24.
//

import SwiftUI

struct TopWeatherView: View {
    
    @State private var location = "Seongnam-si"
    @State private var temperature = 21
    @State private var weather = "partly cloudy"
    @State private var high = 29
    @State private var low = 15
    
    var body: some View {
        Text(location)
            .font(.system(size: 37))
            .foregroundStyle(.white)
            .padding(.top, 20)
        Text(" \(temperature)°")
            .font(.system(size: 104))
            .fontWeight(.thin)
            .foregroundStyle(.white)
        Text(weather)
            .font(.system(size: 24))
            .foregroundStyle(.white)
        Text("H:\(high)° L:\(low)°")
            .font(.system(size: 21))
            .foregroundStyle(.white)
    }
}

#Preview {
    TopWeatherView()
}
