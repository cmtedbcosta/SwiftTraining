//
//  Planet.swift
//  SwiftUITraining
//
//  Created by Hans Dubois on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

struct Planet: Decodable, Identifiable {
    let id: String
    let name: String
    let shortDescription: String
    let imageUrl: URL
    let distanceFromSun: Double
    let description: String?
    let planetType: String?
    let surfaceGravity: Double?
}

