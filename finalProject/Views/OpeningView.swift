//
//  ContentView.swift
//  finalProject
//
//  Created by Jaspreet L. on 11/21/23.
//

import SwiftUI

struct OpeningView: View {
    @StateObject var viewModel = OpeningViewModel()
    
    var body: some View {

        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }

    @ViewBuilder
    var accountView: some View {
        TabView {
            ListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}
struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
