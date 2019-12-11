//
//  Coordinate.swift
//  Stormy
//
//  Created by Azhar Islam on 09/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

struct Coordinate {
    let latitude: Double
    let longtitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longtitude)"
    }
    
    static var alcatrazIsland: Coordinate {
        return Coordinate(latitude: 37.8267, longtitude: -122.4233)
    }
}
