//
//  profile.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct profile: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
            Image ("profile")
                
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFill()
                .cornerRadius(40)
                .padding(.leading)
            Text ("What's on your mind?")
                .font(.system(size: 18))
        }
            HStack{}
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}


