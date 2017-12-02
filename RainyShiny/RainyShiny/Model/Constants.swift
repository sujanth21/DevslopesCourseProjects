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

let BASE_FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let ZIP_CODE = "zip="

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)35\(LONGITUDE)139\(APP_ID)\(API_KEY)"

let FORCAST_URL = "\(BASE_FORECAST_URL)\(ZIP_CODE)94040\(APP_ID)\(API_KEY)"
