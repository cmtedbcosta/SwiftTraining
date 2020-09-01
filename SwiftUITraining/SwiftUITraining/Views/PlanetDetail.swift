//
//  PlanetDetail.swift
//  SwiftUITraining
//
//  Created by Daniel Costa on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetDetail: View {
    @State var planet: Planet
    let planetService: PlanetServiceProtocol
    
    var body: some View {
        ZStack{
            Image("Sky").resizable().edgesIgnoringSafeArea(.all)
            ScrollView {
                PlanetDetailHeaderView(planet: planet)
                PlanetDetailRowView(title: "Distance from Sun", value: planet.distanceFromSun)
                PlanetDetailRowView(title: "Planet type", value: planet.planetType)
                PlanetDetailRowView(title: "Surface gravity", value: planet.surfaceGravity)
                PlanetDetailRowView(title: "Description", value: planet.description)
            }
        }.onAppear{
            self.planetService.planetDetail(id: self.planet.id) { (planet) in
                self.planet = planet
            }
        }.padding(.top, -40)
         .background(Color.clear)
    }
}

struct PlanetDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetail(planet: PlanetMockData.planets[0], planetService: PlanetService())
    }
}
