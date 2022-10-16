//
//  RandomUser+ResponseData.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import Foundation

struct RandomUser: Codable, Identifiable {
    var id = UUID()
    var name: Name
    var picture: Picture
}

struct Name: Codable {
    var title: String
    var first: String
    var last: String
}

struct Picture: Codable {
    var large: String
    var medium: String
    var thumbnail: String
}

struct Info: Codable {
    var seed: String
    var results: Int
    var page: Int
    var version: String
}

struct RandomUserResponse: Codable {
    var results: [RandomUser]
    var info: Info
}
