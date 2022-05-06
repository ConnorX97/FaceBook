//
//  avatarPost.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/06.
//

import SwiftUI

struct avatarPost: View {
    var avatar = "Nurillo"
    var name = "Nurillo Ergashev"
    var mark = false
    @State var like = false
    var body: some View {
        VStack{
            // profile
            HStack{
                Image (avatar)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .padding(.leading)
                VStack(alignment: .leading){
                    HStack(spacing: 3){
                        Text (name)
                            .fontWeight(.bold)
                            .font(.system(size: 14)) +
                        Text(" updated his profile picture")
                            .font(.system(size: 14))

                    }
                    //MARK: Time and globe
                    HStack{
                        Text("13 h. ")
                            .font(.system(size: 14))
                        Image(systemName: "globe.asia.australia.fill")
                        
                    }.foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
                }
                if mark{
                    Image(systemName: "checkmark.seal.fill")
                        .padding(.bottom)
                        .foregroundColor(.blue)
                }
                Spacer()
                HStack{
                    Image(systemName: "ellipsis")
                    Image (systemName: "xmark")
                        .padding(.leading)
                }.font(.system(size:20))
                    .padding(.horizontal)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
            }
            // new Avatar
            ZStack {
                Image(avatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 350)
                    .background(.white)
                    .cornerRadius(200)
                    .padding(.all, 5)
                    .background(.white)
                    .cornerRadius(200)
                    .padding(.all, 2)
                    .background(.gray.opacity(0.5))
                    .cornerRadius(200)
                    
            }
            // blue like and count
            HStack {
                Image(systemName: "hand.thumbsup.fill")
                    .padding(.all, 4)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.leading)
                Text ("249")
                    .font(.system(size: 14))
                
                Spacer()
            }.padding(.vertical)
            // Like, Comment, Share
            HStack {
                Button(action: {
                    like.toggle()
                    
                }, label: {
                   
                    if like {
                        Image(systemName: "hand.thumbsup.fill")
                            .padding(.leading)
                            .foregroundColor(.blue)
                            
                            
                        Text("Like")
                    }else{
                        Image(systemName: "hand.thumbsup")
                            .padding(.leading)
                        Text("Like")
                    }
                        
                    
                    
                })
                Spacer()
                Image(systemName: "bubble.left")
                Text("Comment")
                Spacer()
                Image(systemName: "arrowshape.turn.up.forward")
                Text("Share")
                    .padding(.trailing)
            }.foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
            
            
        }
    }
}

struct avatarPost_Previews: PreviewProvider {
    static var previews: some View {
        avatarPost()
    }
}
