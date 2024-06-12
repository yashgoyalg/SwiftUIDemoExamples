//
//  WatherView.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 06/04/24.
//

import Foundation

import SwiftUI

struct weatherView: View {
    @State private var greeting: String = "Good Morning"
    
    var body: some View {
        VStack(spacing: 25) {
            Text(greeting)
                .foregroundColor(.white)
            // Other view components
        }
        .onAppear {
            fetchWeatherData()
        }
    }
    
    func fetchWeatherData() {
//        WeatherService.fetchWeatherData { result in
//            switch result {
//            case .success(let weatherData):
//                updateGreeting(weatherData)
//            case .failure(let error):
//                print("Error fetching weather data: \(error.localizedDescription)")
//            }
//        }
    }
    
    func updateGreeting(_ weatherData: WeatherResponse) {
        // Determine greeting based on current time and weather conditions
        let currentTime = Date()
        let sunriseTime = Date(timeIntervalSince1970: TimeInterval(weatherData.sunrise))
        let sunsetTime = Date(timeIntervalSince1970: TimeInterval(weatherData.sunset))
        
        if currentTime < sunriseTime {
            greeting = "Good Night"
        } else if currentTime < sunsetTime {
            greeting = "Good Morning"
        } else {
            greeting = "Good Evening"
        }
    }
    
    // Model for weather response
    struct WeatherResponse: Codable {
        let sunrise: Int
        let sunset: Int
        // Other weather properties
    }
}
