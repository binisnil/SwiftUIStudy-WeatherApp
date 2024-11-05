//
//  GradientBar.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 11/3/24.
//

import SwiftUI

struct GradientBar: View {
    let id = UUID()
    let todayLowestTemp: Double
    let todayHighestTemp: Double
    let weeklyLowestTemp: Double
    let weeklyHighestTemp: Double
    
    init(todayLowestTemp: Double,
         todayHighestTemp: Double,
         weeklyLowestTemp: Double,
         weeklyHighestTemp: Double) {
        self.todayLowestTemp = todayLowestTemp
        self.todayHighestTemp = todayHighestTemp
        self.weeklyLowestTemp = weeklyLowestTemp
        self.weeklyHighestTemp = weeklyHighestTemp
    }
    
    var body: some View {
        GeometryReader { geometry in
            let barWidth = geometry.size.width
            
            // 오늘의 온도 바 너비 및 위치 계산
            let todayBarWidth = todayTemperatureBarWidth(totalWidth: barWidth)
            let todayBarOffset = todayTemperatureBarOffset(in: barWidth)
            
            ZStack(alignment: .leading) {
                // 전체 온도 범위를 나타내는 검정색 기준 바
                Rectangle()
                    .fill(Color.black)
                    .frame(width: barWidth, height: 4)
                    .cornerRadius(2)
                
                // 오늘의 온도 범위를 나타내는 파란색 바
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color(hex: 0xCDCF5C),
                                Color(hex: 0xEF8835)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: todayBarWidth, height: 4)
                    .cornerRadius(2)
                    .offset(x: todayBarOffset)
            }
        }
        .frame(height: 4)
        .padding()
    }
    
    /// 오늘의 온도 바의 너비 계산 함수
    func todayTemperatureBarWidth(totalWidth: CGFloat) -> CGFloat {
        let range = weeklyHighestTemp - weeklyLowestTemp
        guard range > 0 else { return 0 }
        
        let todayRange = todayHighestTemp - todayLowestTemp
        let widthRatio = todayRange / range
        return CGFloat(widthRatio) * totalWidth
    }
    
    /// 오늘의 온도 바의 시작 위치 계산 함수
    func todayTemperatureBarOffset(in totalWidth: CGFloat) -> CGFloat {
        let range = weeklyHighestTemp - weeklyLowestTemp
        guard range > 0 else { return 0 }
        
        let offsetRatio = (todayLowestTemp - weeklyLowestTemp) / range
        return CGFloat(offsetRatio) * totalWidth
    }
}

#Preview {
    GradientBar(todayLowestTemp: 13, todayHighestTemp: 28, weeklyLowestTemp: 10, weeklyHighestTemp: 30)
        .frame(width: 100)
}

