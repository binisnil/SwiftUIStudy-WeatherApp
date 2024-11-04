//
//  WeatherTimelineCell.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 10/7/24.
//

import SwiftUI

struct WeatherTimelineCell: View, Identifiable {
    let id = UUID()
    let time: String
    let weather: String
    let temperature: Int
    
    init(time: String, weather: String, temperature: Int) {
        self.time = time
        self.weather = weather
        self.temperature = temperature
    }
    
    var body: some View {
        VStack {
            Text(time)
                .foregroundStyle(.white)
            
            Spacer()
            
            Image(systemName: weather)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .symbolRenderingMode(.multicolor)
                .foregroundColor(.white)
            
            Spacer()

            Text("\(temperature)°")
                .fontWeight(.bold)
                .bold()
                .foregroundStyle(.white)
                .padding(.bottom, 12)
            
        }
        .padding(.trailing, 20)
    }
}

#Preview {
    WeatherTimelineCell(time: "Now", weather: "cloud.fill", temperature: 15)
}
