//
//  ContentView.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    var body: some View {
        
        List(randomUserViewModel.randomUsers){ aRandomUser in
            RandomUserRowView(aRandomUser)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
