//
//  WeatherTimelineView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 10/7/24.
//

import SwiftUI

struct WeatherTimelineView: View {
    @State private var todaySummary = "Cloudy conditions from 1AM-9AM, with showers expected at 9AM."
    @State private var dummyDatas = [WeatherTimelineCell(time: "Now", weather: "cloud.fill", temperature: 20),
                                     WeatherTimelineCell(time: "11PM", weather: "sun.max.fill", temperature: 20),
                                     WeatherTimelineCell(time: "12PM", weather: "cloud.snow.fill", temperature: 15),
                                     WeatherTimelineCell(time: "13PM", weather: "cloud.bolt.fill", temperature: 11),
                                     WeatherTimelineCell(time: "14PM", weather: "cloud.moon.fill", temperature: 21),
                                     WeatherTimelineCell(time: "15PM", weather: "cloud.sun.fill", temperature: 30),
                                     WeatherTimelineCell(time: "16PM", weather: "cloud.hail.fill", temperature: 21)]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(todaySummary)
                .foregroundStyle(.white)
                .padding(.top, 10)
                .padding(.leading, 15)
                .fontWeight(.medium)
            
            
            Divider()
                .background(Color.gray.opacity(0.25))
                .padding(.leading, 14)
                .padding(.top, 14)
            
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 10) {
                    ForEach(dummyDatas) { cell in
                        cell
                    }
                }
            }
            .padding(.leading, 15)
            .padding(.top, 14)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    MainView()
}
