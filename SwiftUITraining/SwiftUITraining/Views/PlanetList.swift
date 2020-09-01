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
    let planetService: PlanetServiceProtocol
    
    var body: some View {
        NavigationView {
            List(planets) { item in
                NavigationLink(
                    destination: PlanetDetail(
                        planet: item, planetService: self.planetService)){
                            PlanetRowView(planet: item)
                }
            }.onAppear {
                self.planetService.planets { (planets) in
                    self.planets = planets
                }
            }.navigationBarTitle("Planets")
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanetList(planetService: PlanetServiceSucceedingStub())
            PlanetList(planetService: PlanetServiceFailingStub())
        }
    }
}
