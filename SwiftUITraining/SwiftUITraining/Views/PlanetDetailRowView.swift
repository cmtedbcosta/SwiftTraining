//
//  PlanetDetailRowView.swift
//  SwiftUITraining
//
//  Created by Daniel Costa on 01/09/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import SwiftUI

struct PlanetDetailRowView: View {
    let title: String
    let stringValue: String
    let doubleValue: Double
    
    init(title: String, value: String?) {
        self.title = title
        self.stringValue = value ?? ""
        self.doubleValue = 0
    }
    
    init(title: String, value: Double?) {
        self.title = title
        self.doubleValue = value ?? 0
        self.stringValue = ""
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            if stringValue != "" {
                HStack {
                    Text(title)
                    .font(Font.custom("Helvetica", size: 17))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    Spacer()
                }.background(Color.black.opacity(0.3))
                HStack {
                    Text(stringValue)
                    .font(Font.custom("Helvetica", size: 17))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                    .padding(.top, 6)
                    .padding(.bottom, 6)
                    Spacer()
                }.background(Color.white.opacity(0.3))
            } else {
                if doubleValue > 0 {
                    HStack {
                        Text(title)
                        .font(Font.custom("Helvetica", size: 17))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        Spacer()
                    }.background(Color.black.opacity(0.3))
                    HStack {
                        Text("\(doubleValue, specifier: "%.2f")")
                        .font(Font.custom("Helvetica", size: 17))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .padding(.top, 6)
                        .padding(.bottom, 6)
                        Spacer()
                    }.background(Color.white.opacity(0.3))
                }
            }
        }
    }
}

struct PlanetDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailRowView(title: "Some title", value: "Some value")
    }
}
