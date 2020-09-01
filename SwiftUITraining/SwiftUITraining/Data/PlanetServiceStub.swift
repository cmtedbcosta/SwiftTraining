//
//  PlanetServiceStub.swift
//  SwiftUITraining
//
//  Created by Hans Dubois on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation

class PlanetServiceFailingStub : PlanetServiceProtocol {
    func planetDetail(id: String, closure: @escaping (Planet) -> Void) {
        closure(PlanetMockData.planets[0])
    }
    
    func planets(closure: @escaping ([Planet]) -> Void) {
        closure([])
    }
}

class PlanetServiceSucceedingStub: PlanetServiceProtocol {
    func planetDetail(id: String, closure: @escaping (Planet) -> Void) {
        closure(PlanetMockData.planets[0])
    }
    
    func planets(closure: @escaping ([Planet]) -> Void) {
        closure(PlanetMockData.planets)
    }
}
