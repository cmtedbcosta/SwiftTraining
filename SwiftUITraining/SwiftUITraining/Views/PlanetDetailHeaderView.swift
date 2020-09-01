//
//  PlanetDetailHeaderView.swift
//  SwiftUITraining
//
//  Created by Daniel Costa on 01/09/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetDetailHeaderView: View {
    let planet: Planet
    var body: some View {
        VStack {
            AnimatedImage(url: planet.imageUrl)
                .resizable()
                .frame(width: 250, height: 250)
                .listRowBackground(Color.clear)
            Text(planet.name)
                .font(Font.custom("Helvetica", size: 48))
                .foregroundColor(.white)
            Text(planet.shortDescription)
                .font(Font.custom("Helvetica", size: 16))
                .foregroundColor(.white)
                .padding(.horizontal, 16)
        }.padding(.bottom, 16)
    }
}

struct PlanetDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailHeaderView(planet: PlanetMockData.planets[0])
    }
}
