//
//  Main.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView() {
            ScrollView(showsIndicators: false){
                
                
// MARK: profile, live, photo, room
                profile().padding(.top)
                HStack{
                    Spacer()
                    HStack {
                        Image(systemName: "video.fill")
                            .foregroundColor(.red)
                        Text ("Live")
                            .fontWeight(.bold)
                        
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "photo.on.rectangle.angled")
                            .foregroundColor(.green)
                        Text ("Photo")
                            .fontWeight(.bold)
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "video.fill.badge.plus")
                            .foregroundColor(.purple)
                        Text ("Room")
                            .fontWeight(.bold)
                    }
                    Spacer()
                    
                }
                HStack{}
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
              
// MARK: Creating room
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10){
                        creatingRoom()
                        onlineStatus(avatar: "Zokir", isOnline: false)
                        onlineStatus(avatar: "Nurillo", isOnline: true)
                        onlineStatus(avatar: "Sherzod", isOnline: true)
                        onlineStatus(avatar: "Toxir", isOnline: false)
                        onlineStatus(avatar: "Nurillo", isOnline: true)
                        onlineStatus(avatar: "Zokir", isOnline: false)
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                }
                HStack{}
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
                
                
 // MARK: Stories
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 10){
                        creatingStories()
                        Stories(avatar: "Sherzod", story: "coding", names: "Fayziev\nSherzod")
                        Stories(avatar: "Toxir", story: "wall", names: "Gaparov\n   Toxir")
                        Stories(avatar: "Nurillo", story: "football", names: "Ergashev\nNurillo")
                        Stories(avatar: "Zokir", story: "mainn", names: "Shoimov\n  Zokir")
                        
                        
                    }.padding(.horizontal)
                }
                HStack{}
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.3))
                
// MARK: Posts
                
                Group{
                    Posts(avatar: "daryo", name: "Daryo", comment: "UzAuto Motors Farg‘onada Damas’lar ortilgan treyler YTHga uchraganiga munosabat bildirdi", mark: true, likeCount: 14654, post: "daryo_news1", commentCount: 412, like: false)
                    
                    Posts(avatar: "Nurillo", name: "Ergashev Nurillo ▶ Uzbek Students in Korea", comment: "Hammaga salom D10 vizasini cho'zdirish uchun qanday hujjatlar kerak ?", mark: false, likeCount: 132, post: "", commentCount: 43, like: false)
                    
                    Posts(avatar: "profile", name: "Sherzod Fayziev", comment: "Bu mening Koreyada o'qigan o'qishim. Hozirda bu o'qishni bitirdim va men uni sog'inib qolaman", mark: true, likeCount: 4596354, post: "klc_main",commentCount: 23453)
                    
                    avatarPost(avatar: "Zokir", name: "Zokir", mark: false, like: false)
                    
                    Posts(avatar: "Toxir", name: "Toxir Gapparov", comment: "Salom mening ismim Toxir va men dasturlashka qiziqaman", mark: false, likeCount: 230534, post: "toxcode", commentCount: 6503, like: false)
                    
                    
                }
            }
            .navigationBarItems(leading:
                                    Text ("facebook")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(.blue)
                                , trailing:
                                    HStack(spacing: 20){
                ZStack{
                    Image(systemName: "magnifyingglass")
                    Circle().fill(Color.gray.opacity(0.3))
                        .frame(width: 35, height: 35)
                }
                ZStack{
                    Image(systemName: "plus.message")
                    Circle().fill(Color.gray.opacity(0.3))
                        .frame(width: 35, height: 35)
                }
            }
            )
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
