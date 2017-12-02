//
//  WeatherCell.swift
//  RainyShiny
//
//  Created by Sujanth Sebamalaithasan on 3/12/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    
    func configureCell(forecast: Forecast) {
        
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.day
        weatherType.text = forecast.weatherType
        highTemp.text = "\(forecast.highTemp)"
        lowTemp.text = "\(forecast.lowTemp)"
    }
    
}
