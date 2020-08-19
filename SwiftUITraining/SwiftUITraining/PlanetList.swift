//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Essam on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI

struct PlanetList: View {
    let planets: [Planet]
    
    // Constructor
    init(_ planets: [Planet]){
        self.planets = planets
    }
    
    var body: some View {
        List(planets) { item in
            PlanetRowView(planet: item)
        }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
        PlanetList(PlanetMockData.planets)
    }
}
