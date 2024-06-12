//
//  WatherService.swift
//  SwiftUIPractice
//
//  Created by Rahul-dev on 06/04/24.
//

import Foundation

//struct WeatherService {
//    static func fetchWeatherData(completion: @escaping (Result<WeatherResponse, Error>) -> Void) {
//        guard let url = URL(string: "YOUR_WEATHER_API_ENDPOINT") else {
//            completion(.failure(APIError.invalidEndpoint))
//            return
//        }
//        
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data else {
//                completion(.failure(APIError.noData))
//                return
//            }
//            
//            do {
//                let weatherData = try JSONDecoder().decode(WeatherResponse.self, from: data)
//                completion(.success(weatherData))
//            } catch {
//                completion(.failure(error))
//            }
//        }.resume()
//    }
//}

enum APIError: Error {
    case invalidEndpoint
    case noData
    // Add more error cases as needed
}


