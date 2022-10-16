//
//  ProfileImgView.swift
//  NetworkingWithCB
//
//  Created by PNT001 on 2022/10/16.
//

import Foundation
import SwiftUI
import URLImage

//let url: URL =  "https://randomuser.me/api/portraits/women/1.jpg"



struct ProfileImgView: View {
    var imageUrl: URL
    var body: some View {
        
        URLImage(imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }.frame(width: 60, height: 60)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.init(.yellow), lineWidth: 2))
    }
}


struct ProfileImgView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/1.jpg")!
        ProfileImgView(imageUrl: url)
    }
}
