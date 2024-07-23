//
//  finalProjectApp.swift
//  finalProject
//
//  Created by Jaspreet L. on 11/21/23.
//

import FirebaseCore
import SwiftUI

@main
struct FinalProjectApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            OpeningView()
        }
    }
}
