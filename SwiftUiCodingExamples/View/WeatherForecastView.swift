//
//  WatherForecastView.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/30/21.
//

import SwiftUI

struct WeatherForecastView: View {
    @ObservedObject var weather: WeatherForecast
    @Binding var showForecast: Bool
    
    var body: some View {
        VStack{
            List(weather.forecast){ day in
                Label(
                    title: { Text(day.day) },
                    icon: { Image(systemName: day.icon)
                        .foregroundColor(.green)}
                )
            }
            Button("Close", action: { showForecast.toggle()})
        }
    }
}

struct WatherForecastView_Previews: PreviewProvider {
    @State static var previewWeather = WeatherForecast()
    
    static var previews: some View {
        WeatherForecastView(weather: previewWeather, showForecast: Binding.constant(true))
    }
}
