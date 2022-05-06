//
//  creatingStories.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct creatingStories: View {
    var body: some View {
        VStack{
            ZStack (alignment: .bottom){
                Image ("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 210)
                Text("Create a\n   Story")
                    .fontWeight(.bold)
                    .frame(width: 120, height: 80)
                    .background(Color(hue: 0.001, saturation: 0.0, brightness: 0.970))
                
                Image (systemName: "plus.circle.fill")
                    .foregroundColor(.blue)
                    .background(.white)
                    .font(.system(size: 30))
                    .cornerRadius(20)
                    .padding(.bottom, 63)
            }
            .cornerRadius(15)
        }
    }
}

struct creatingStories_Previews: PreviewProvider {
    static var previews: some View {
        creatingStories()
    }
}
