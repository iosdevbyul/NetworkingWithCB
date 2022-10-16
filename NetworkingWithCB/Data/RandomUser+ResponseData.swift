//
//  RandomUser+ResponseData.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import Foundation

struct RandomUser: Codable, Identifiable, CustomStringConvertible {
    var id = UUID()
    var name : Name
    var photo : Photo
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case photo = "picture"
    }
    static func getDummy() -> Self {
        print(#fileID, #function, #line, "")
        return RandomUser(name: Name.getDummy(), photo: Photo.getDummy())
    }
    
    var profileImgUrl : URL {
        get {
            URL(string: photo.medium)!
        }
    }
    
    var description: String {
        return name.description
    }
    
}

struct Name: Codable, CustomStringConvertible {
    var title: String
    var first: String
    var last: String

    static func getDummy() -> Self {
        return Name(title: "dummyTitle", first: "dummyFirst", last: "dummyLast")
    }

    var description: String {
        return "[\(title)] \(last), \(first)"
    }
}

struct Photo: Codable {
    var large : String
    var medium : String
    var thumbnail : String
    static func getDummy() -> Self {
        print(#fileID, #function, #line, "")
        return Photo(large: "https://randomuser.me/api/portraits/women/93.jpg",
                     medium: "https://randomuser.me/api/portraits/women/93.jpg",
                     thumbnail: "https://randomuser.me/api/portraits/women/93.jpg")
    }
}



struct Info: Codable {
    var seed: String
    var results: Int
    var page: Int
    var version: String
}


struct RandomUserResponse: Codable, CustomStringConvertible {
    var results: [RandomUser]
    var info: Info

    var description: String {
        return "results.count: \(results.count) / info : \(info.seed)"
    }
}

