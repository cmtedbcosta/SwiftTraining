//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 05/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI

struct PlanetRowView: View {
    var body: some View {
        HStack() {
            Image("Mercury")
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text("Mercury")
                    .font(Font.custom("Helvetica", size: 20))
                Text("The swiftest planet")
                    .font(Font.custom("Helvetica", size: 13))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
    }
}

struct PlanetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRowView()
            .previewLayout(PreviewLayout
                .fixed(width: 400, height: 80))
    }
}
