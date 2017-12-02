//
//  Constants.swift
//  RainyShiny
//
//  Created by Sujanth Sebamalaithasan on 2/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "f2a8b0759060050df07f4f734eaddc46"

let BASE_FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

let FORECAST_URL = "\(BASE_FORECAST_URL)\(APP_ID)\(API_KEY)"
