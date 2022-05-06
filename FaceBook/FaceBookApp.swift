//
//  FaceBookApp.swift
//  FaceBook
//
//  Created by Sherzod Fayziev on 2022/05/05.
//

import SwiftUI

@main
struct FaceBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabV()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
