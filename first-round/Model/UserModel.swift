//
//  UserModel.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import Foundation

struct UserModel: Codable {
    let stationCode: Int?
    let name: String?
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case stationCode = "station_code"
        case name = "name"
        case url = "url"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        stationCode = try values.decodeIfPresent(Int.self, forKey: .stationCode)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        url = try values.decodeIfPresent(String.self, forKey: .url)
    }
}
