//  WeatherService.swift
//  Weathered
//  Created by lain on 2017-06-27.
//  Copyright © 2017 joem. All rights reserved.

import Foundation
import Alamofire


class WeatherService {
    
    static let instance = WeatherService()
    
    fileprivate var _currentWeather = CurrentWeather()
    
    var currentWeather: CurrentWeather {
        get {
            return _currentWeather
        } set {
            _currentWeather = newValue
        }

    }
    
    func downloadWeatherDetails() {
        
        let url = URL(string: API_URL_CURRENT_WEATHER)
        
        Alamofire.request(url!).responseData { (response) in
            
            // print(response.result.value ?? "")
            
            self.currentWeather = CurrentWeather.loadCurrentWeatherFromData(response.data!)
            
            print(self.currentWeather.cityName)
            print(self.currentWeather.weatherType)
            
            
        }
    }
}


