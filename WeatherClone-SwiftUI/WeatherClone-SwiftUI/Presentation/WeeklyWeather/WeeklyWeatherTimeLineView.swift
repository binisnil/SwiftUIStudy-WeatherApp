//
//  WeeklyWeatherTimeLineView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 11/5/24.
//

import SwiftUI

struct WeeklyWeatherTimeLineView: View {
    @State private var todaySummary = "Cloudy conditions from 1AM-9AM, with showers expected at 9AM."
    @State private var dummyDatas = [WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
                                     WeeklyWeatherViewCell(day: "Today",
                                                           weather: "cloud.bolt.fill",
                                                           highestTemp: 27,
                                                           lowestTemp: 15,
                                                           weeklyHighestTemp: 30,
                                                           weeklyLowestTemp: 10),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .center, spacing: 5) {
                Image(systemName: "calendar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 19, height: 19)
                    .foregroundColor(.white)
                
                Text("10-DAY  FORECAST")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }
            .padding(.top, 14)
            .padding(.leading, 15)
            
            
            Divider()
                .background(Color.gray.opacity(0.25))
                .padding(.leading, 14)
                .padding(.top, 6)
            
            VStack(alignment: .center, spacing: 14) {
                ForEach(dummyDatas) { cell in
                    cell
                }
            }
            .padding(.top, 14)
        }
    }
}

#Preview {
    MainView()
}
