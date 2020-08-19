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
    let planet: Planet
    var body: some View {
        VStack{
            AnimatedImage(url: planet.imageUrl)
                .resizable()
                .frame(width: 250, height: 250)
            Text(planet.name)
                .font(Font.custom("Helvetica", size: 48))
            Text(planet.shortDescription)
                .font(Font.custom("Helvetica", size: 18))
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct PlanetDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetail(planet: PlanetMockData.planets[0])
    }
}
