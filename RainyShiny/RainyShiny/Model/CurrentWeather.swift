//
//  CurrentWeather.swift
//  RainyShiny
//
//  Created by Sujanth Sebamalaithasan on 2/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { (response) in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                //City Name
                if let cityName = dict["name"] as? String {
                    self._cityName = cityName.capitalized
                }
                
                //Weather Type
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let weatherType = weather[0]["main"] as? String {
                        
                        self._weatherType = weatherType.capitalized
                    }
                }
                
                //Temp value
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let temp = main["temp"] as? Double {
                        
                        let kelvinToFarenheitPreDivision = (temp * (9/5) - 459.67)
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision / 10))
                        self._currentTemp = kelvinToFarenheit
                        
                    }
                }
                
            }
            
            completed()
        }
        
    }
}
