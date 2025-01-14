//
//  ContentView.swift
//  weatherB1
//
//  Created by dulieux baptiste on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Shacoville, SH")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("22°")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                    .padding(.bottom, 40)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: 22)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.max.fill", temperature: 23)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "wind.snow", temperature: 0)
                    WeatherDayView(dayOfWeek: "Thu", imageName: "snow", temperature: -2)
                    WeatherDayView(dayOfWeek: "Fry", imageName: "cloud.rain.fill", temperature: 10)
                }
                
                Spacer()
                
                Button{
                    print("button pressed")
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
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.title2)
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
