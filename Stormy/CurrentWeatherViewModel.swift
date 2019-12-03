//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Azhar Islam on 03/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        let humidityPercentValue = Int(model.humidity * 100)
        let ppPercentValue = Int(model.precipProbability * 100)

        self.temperature = "\(roundedTemperature)º"
        self.humidity = "\(humidityPercentValue)%"
        self.precipitationProbability = "\(ppPercentValue)%"
        self.summary = model.summary
        self.icon = model.iconImage
    }
}
