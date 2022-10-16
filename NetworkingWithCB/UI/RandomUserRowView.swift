//
//  RandomUserRowView.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import Foundation
import SwiftUI

struct RandomUserRowView: View {
    var body: some View {
        HStack {
            ProfileImgView(imageUrl: URL(string: "https://randomuser.me/api/portraits/women/55.jpg")!)
            
            
            Text("abc")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
                .minimumScaleFactor(0.5)
        }.frame(minWidth:0, maxWidth:.infinity, minHeight: 0, maxHeight: 50, alignment: .leading).padding(.vertical)
    }
}


struct RandomUserRowView_Previews: PreviewProvider {
    static var previews: some View {
        RandomUserRowView()
    }
}
