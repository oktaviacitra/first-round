//
//  RidesViewModel.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import Foundation
import Alamofire
import UIKit

class RidesViewModel: ObservableObject {
    @Published var rides: [RidesModel]
    private let url: String = "https://assessment.api.vweb.app/rides"
    
    init() {
        rides = [RidesModel]()
        AF.request(url, method: .get).validate().responseJSON { response in
            guard let rawData = response.data else { return }
            guard let jsonData = try? JSONDecoder().decode([RidesModel].self, from: rawData) else { return }
            jsonData.forEach { self.rides.append($0) }
        }
        
    }
    
}
