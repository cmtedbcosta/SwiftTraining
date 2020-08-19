//
//  PlanetService.swift
//  SwiftUITraining
//
//  Created by Hans Dubois on 19/08/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation
import Alamofire

class PlanetService {
    let baseUrl = "https://y3fsc8hysh.execute-api.us-east-2.amazonaws.com/training/planets"
    
    func planets(closure: @escaping ([Planet]) -> Void) {
        AF.request(baseUrl).responseDecodable(of: [Planet].self) { response in
            switch response.result {
                case .success(let planets):
                    closure(planets)
                case .failure(let error):
                    print(error)
            }
        }
    }
}
