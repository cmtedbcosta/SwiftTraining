//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 05/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetRowView: View {
    let planet: Planet
    var body: some View {
        HStack {
            AnimatedImage(url: planet.imageUrl)
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text(planet.name)
                    .font(Font.custom("Helvetica", size: 20))
                Text(planet.shortDescription)
                    .font(Font.custom("Helvetica", size: 13))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct PlanetRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PlanetRowView(planet: PlanetMockData.planets[0])
                .previewLayout(PreviewLayout
                .fixed(width: 400, height: 80))
            PlanetRowView(planet: PlanetMockData.planets[1])
                .previewLayout(PreviewLayout
                .fixed(width: 400, height: 80))
        }
    }
}
