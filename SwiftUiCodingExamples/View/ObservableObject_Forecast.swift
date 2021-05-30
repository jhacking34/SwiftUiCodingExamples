//
//  ObservableObject_Forecast.swift
//  SwiftUiCodingExamples
//
//  Created by Johnny Hacking on 5/30/21.
//

import SwiftUI

struct ObservableObject_Forecast: View {
    @StateObject private var weather = WeatherForecast()
    @State private var showForecast = false
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 24){
                    HeaderView("Observed Object", subtitle: "Weather Forecast", desc: "Using @Observed Objec to observe changes to the parents @stateObjec in sub view There is also a delay to show how the subview recognizes the change in data", back: .red, textColor: .black)
                    Text(weather.forecast[0].day)
                    Image(systemName: weather.forecast[0].icon)
                        .font(.system(size: 120))
                        .foregroundColor(.green)
                    Button("Show Forecast"){
                        showForecast = true
                        weather.fetchRestOfWeek()
                    }
                    Spacer()
                }
                .font(.title2)
                
                if showForecast {
                    WeatherForecastView(weather: weather, showForecast: $showForecast)
                }
            }
            .navigationTitle("@ObservedObject")
        }
    }
}

struct ObservableObject_Forecast_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObject_Forecast()
    }
}
