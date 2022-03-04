//
//  UserViewModel.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import Foundation
import Alamofire

class UserViewModel: ObservableObject {
    @Published var user: UserModel?
    private let url: String = "https://assessment.api.vweb.app/user"
    
    init() {
        AF.request(url, method: .get).validate().responseJSON { response in
            guard let rawData = response.data else { return }
            guard let jsonData = try? JSONDecoder().decode(UserModel.self, from: rawData) else { return }
            self.user = jsonData
        }
    }
}
