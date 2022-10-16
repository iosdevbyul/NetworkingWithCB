//
//  ContentView.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0...100, id: \.self){ index in
            RandomUserRowView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
