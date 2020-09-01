//
//  PlanetService.swift
//  SwiftUITraining
//
//  Created by Hans Dubois on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation
import Alamofire

protocol PlanetServiceProtocol {
    func planets(closure: @escaping ([Planet]) -> Void)
    func planetDetail(id: String, closure: @escaping (Planet) -> Void)
}

class PlanetService : PlanetServiceProtocol{
    let baseUrl = "https://y3fsc8hysh.execute-api.us-east-2.amazonaws.com/training/planets"
    
    func planets(closure: @escaping ([Planet]) -> Void) {
        AF.request(baseUrl).responseDecodable(of: [Planet].self) { response in
            switch response.result {
                case .success(let planets):
                    closure(planets.sorted {
                        $0.distanceFromSun < $1.distanceFromSun
                    })
            case .failure(let error):
                    print(error)
            }
        }
    }
    
    func planetDetail(id: String, closure: @escaping (Planet) -> Void) {
        AF.request(baseUrl + "/" + id).responseDecodable(of: Planet.self) { response in
            switch response.result {
                case .success(let planet):
                    closure(planet)
            case .failure(let error):
                    print(error)
            }
        }
    }
}
