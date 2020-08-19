//
//  PlanetMockData.swift
//  SwiftUITraining
//
//  Created by Essam on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

struct PlanetMockData {
    static let planets: [Planet] = EntityLoader.load("planets.json")
}
