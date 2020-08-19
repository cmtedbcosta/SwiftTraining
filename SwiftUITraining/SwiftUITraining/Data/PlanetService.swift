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
    
    func planets() {
        AF.request(baseUrl).responseDecodable(of: Decodable.Protocol, completionHandler: <#T##(DataResponse<Decodable, AFError>) -> Void#>)
    }
}
