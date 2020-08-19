//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Essam on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI

struct PlanetList: View {
    @State private var planets: [Planet] = []
    let planetService: PlanetService
    
    var body: some View {
        List(planets) { item in
            PlanetRowView(planet: item)
        }.onAppear {
            self.planetService.planets { (planets) in
                self.planets = planets
            }
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        PlanetList(planetService: PlanetService())
    }
}
