//
//  BottomTabView.swift
//  WeatherClone-SwiftUI
//
//  Created by 박윤빈 on 9/23/24.
//

import SwiftUI

enum Tab {
    case map
    case list
    case main
}

struct BottomTabView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack {
            Divider()
                .frame(minHeight: 0.5)
                .overlay(.gray)
            HStack {
                Button {
                    print("map button tapped")
                } label: {
                    Image(systemName: "map")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 25, height: 23)

                }
                .padding(.leading, 20)
                
                Spacer()
                
                HStack {
                    Image(systemName: "location.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 14, height: 13)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 9, height: 9)
                }
                Spacer()

                
                Button {
                    print("list button tapped")
                } label: {
                    Image(systemName: "list.bullet")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 19)

                }
                .padding(.trailing, 20)

            }
            .background(Color.clear)
            .frame(width: UIScreen.main.bounds.width, height: 78)
        }
    }
}


#Preview {
    MainView()
}
