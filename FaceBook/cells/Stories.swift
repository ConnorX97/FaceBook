//
//  Stories.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct Stories: View {
    var avatar = "Sherzod"
    var  story = "coding"
    var names = "Ergashev\n Nurillo"
    
    var body: some View {
        VStack{
            ZStack (alignment: .top){
                Image (story)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 210)
                VStack{
                    Image(avatar)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(30)
                        .padding(.all, 4)
                    
                        .background(.blue)
                        .cornerRadius(30)
                        .padding(.trailing, 52)
                        .padding(.top, 8)
                    
                    
                    HStack{
                        Text(names)
                            .fontWeight(.bold)
                            .frame(width: 120, height: 40)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                        .frame(width: 20, height: 40)
                        .padding(.horizontal, 50)
                        .background(.black.opacity(0.4))
                        .padding(.top, 96)
                    /*
                        .padding(.horizontal, 30)
                        .background(.black.opacity(0.4))
                        .padding(.top, 103)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                     */
                }
            }
            .cornerRadius(15)
        }
        
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
