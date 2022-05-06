//
//  Posts.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/06.
//

import SwiftUI

struct Posts: View {
    var avatar = "profile"
    var name = "Sherzod Fayziev"
    var comment = "No data"
    var mark = true
    var likeCount: Int = 0
    var post = "klc_main"
    var commentCount: Int = 0
    @State var like = false
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            
//MARK: Profile, Time, Checkmark, description
            HStack{
                Image (avatar)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .padding(.leading)
                VStack(alignment: .leading){
                Text (name)
//MARK: Time and globe
                    HStack{
                    Text("13 h. ")
                    Image(systemName: "globe.asia.australia.fill")
                    }.foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
                        .font(.system(size: 14))
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
            Text (comment)
                .padding(.horizontal)
                .lineLimit(4)
            Image(post)
                .resizable()
                .padding(.horizontal)
                .scaledToFit()
            
//MARK: Like and count comment
            HStack(spacing:-35){
                Image(systemName: "heart.circle.fill")
                    .foregroundColor(.red)
                    Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.blue)
                        .background(.white)
                        .cornerRadius(20)
                Text("\(likeCount)")
                    .padding(.leading,55)
                    .font(.system(size: 14))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
                  
                Spacer()
                Text("\(commentCount) comments")
                    .padding(.trailing)
                    .font(.system(size: 14))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.52))
                
            }
                .padding(.leading, 30)
                .padding(.vertical,1)
            HStack{}
                .frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
            
//MARK: SetLike and WriteComment
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
            
            HStack{}
                .frame(height: 10)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3))
        }
    }
}

struct Posts_Previews: PreviewProvider {
    static var previews: some View {
        Posts()
    }
}
