//
//  RandomUserViewModel.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import Foundation
import Combine
import Alamofire

class RandomUserViewModel: ObservableObject {
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [RandomUser]()
    
    var baseUrl = "https://randomuser.me/api/?results=50"
    
    init() {
        print("init")
        fetchRandomUsers()
    }
    
    func fetchRandomUsers() {
        print("fetch")
        AF.request(baseUrl)
            .publishDecodable(type: RandomUserResponse.self)
            .compactMap{ $0.value }
            .map{ $0.results }
            .sink ( receiveCompletion: { completion in
                print("completed data stream")
            }, receiveValue: { receivedValue in
                print("received : \(receivedValue.count)")
                self.randomUsers = receivedValue
            }).store(in: &subscription)
    }
}
