//
//  ContentView.swift
//  weatherB1
//
//  Created by dulieux baptiste on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight: Bool = false
    
    
    
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue, botColor: .white)
            VStack{
                Spacer()
                HStack{
                    Text("Shacoville, SH")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                    
                    Button {
                        reloadTemperature()
                    } label : {
                        Image(systemName: "arrow.clockwise.circle")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }
                Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("22°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                HStack(spacing: 20){
                    WeatherDayView(temperature: forecasts[0])
                    WeatherDayView(temperature: forecasts[1])
                    WeatherDayView(temperature: forecasts[2])
                    WeatherDayView(temperature: forecasts[3])
                    WeatherDayView(temperature: forecasts[4])
                }
                
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.title2).bold()
                        .cornerRadius(12)
                }
                
                Spacer()
                
            }
        }
    }
}

struct WeatherDayView: View {
    
    var temperature: Temperature

    var body: some View {
        VStack{
            Text(temperature.dayOfWeek)
                .font(.title2)
                .foregroundStyle(.white)
            Image(systemName: temperature.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature.temp)°")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
