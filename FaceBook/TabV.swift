//
//  TabV.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/06.
//

import SwiftUI

struct TabV: View {
    var body: some View {
        TabView {
            Main()
                .tabItem {
                    Label("", systemImage: "house.fill")
                }
            Friends()
                .tabItem {
                    Label("", systemImage: "person.2.fill")
                }
            MyInfo()
                .tabItem {
                    Label("", systemImage: "person.crop.circle")
                }
            Notifications()
                .tabItem {
                    Label("", systemImage: "bell")
                }
            Menu()
                .tabItem {
                    Label("", systemImage: "line.3.horizontal")
                }
            
        }
    }
}

struct TabV_Previews: PreviewProvider {
    static var previews: some View {
        TabV()
    }
}
