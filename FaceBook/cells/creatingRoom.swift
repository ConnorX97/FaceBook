//
//  creatingRoom.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct creatingRoom: View {
    var body: some View {
        HStack{
            Image(systemName: "video.fill.badge.plus")
                .resizable()
                .frame(width: 30, height: 18)
                .foregroundColor(.blue)
            Text("Create\nRoom")
                .font(.system(size: 14))
                .foregroundColor(.blue)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.white)
        .cornerRadius(40)
        .padding(.vertical, 2)
        .padding(.horizontal, 2)
        .background(.purple.opacity(0.5))
        .cornerRadius(40)
        
        
    }
}

struct creatingRoom_Previews: PreviewProvider {
    static var previews: some View {
        creatingRoom()
    }
}
