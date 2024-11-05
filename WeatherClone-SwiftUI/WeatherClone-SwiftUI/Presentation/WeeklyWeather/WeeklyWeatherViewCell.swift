//
//  WeeklyWeatherViewCell.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 11/3/24.
//

import SwiftUI

struct WeeklyWeatherViewCell: View, Identifiable {
    let id = UUID()
    let day: String
    let weather: String
    let highestTemp: Double
    let lowestTemp: Double
    let weeklyHighestTemp: Double
    let weeklyLowestTemp: Double

    init(day: String,
         weather: String,
         highestTemp: Double,
         lowestTemp: Double,
         weeklyHighestTemp: Double,
         weeklyLowestTemp: Double) {
        self.day = day
        self.weather = weather
        self.highestTemp = highestTemp
        self.lowestTemp = lowestTemp
        self.weeklyHighestTemp = weeklyHighestTemp
        self.weeklyLowestTemp = weeklyLowestTemp
    }
    var body: some View {
        HStack(alignment: .center, spacing: 14) {
            
            Text("\(day)")
                .foregroundStyle(Color.white)
                .font(.system(size: 24, weight: .semibold))
            
            Image(systemName: weather)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .symbolRenderingMode(.multicolor)
                .foregroundColor(.white)
            
            HStack(alignment: .center, spacing: 10) {
                Text("\(lowestTemp, specifier: "%.0f")°")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 22, weight: .semibold))

                GradientBar(todayLowestTemp: lowestTemp,
                            todayHighestTemp: highestTemp,
                            weeklyLowestTemp: weeklyLowestTemp,
                            weeklyHighestTemp: weeklyHighestTemp)
                .frame(width: 100, height: 4)
                
                Text("\(highestTemp, specifier: "%.0f")°")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 22, weight: .semibold))
            }
        }
        
        Divider()
            .background(Color.gray.opacity(0.25))
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.top, 15)

    }
}

#Preview {
    WeeklyWeatherViewCell(day: "Today",
                          weather: "cloud.bolt.fill",
                          highestTemp: 20,
                          lowestTemp: 16,
                          weeklyHighestTemp: 30,
                          weeklyLowestTemp: 10)
}
