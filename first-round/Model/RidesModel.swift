//
//  RidesModel.swift
//  first-round
//
//  Created by Oktavia Citra on 01/03/22.
//

import Foundation

struct RidesModel: Codable {
    let id: Int?
    let originStationCode: Int?
    let stationPath: [Int]?
    let date: String?
    let mapUrl: String?
    let state: String?
    let city: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case originStationCode = "origin_state_code"
        case stationPath = "station_path"
        case date = "date"
        case mapUrl = "map_url"
        case state = "state"
        case city = "city"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        originStationCode = try values.decodeIfPresent(Int.self, forKey: .originStationCode)
        stationPath = try values.decodeIfPresent([Int].self, forKey: .stationPath)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        mapUrl = try values.decodeIfPresent(String.self, forKey: .mapUrl)
        state = try values.decodeIfPresent(String.self, forKey: .state)
        city = try values.decodeIfPresent(String.self, forKey: .city)
    }
}
