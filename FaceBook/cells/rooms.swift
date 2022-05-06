//
//  onlineStatus.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct onlineStatus: View {
    var avatar = "Nurillo"
    var isOnline = true
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            Image(avatar)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            
            if isOnline {
                ZStack{
                Circle().frame(width: 24, height: 24).foregroundColor(.white)
                Circle().frame(width: 18, height: 18).foregroundColor(.green)
                }
            }
            
            
        }
        
    }
}

struct onlineStatus_Previews: PreviewProvider {
    static var previews: some View {
        onlineStatus()
    }
}
