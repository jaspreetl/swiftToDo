//
//  loginView.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/1/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {

                HeaderView(subtitle: "hi", background: .purple)
                //login typing space
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.purple)
                    }
                    
                    
                    TextField("email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    //logging in
                    // temp
//                    VStack {
//                        NavigationLink("log in", destination: ListView(userId: viewModel.currentUserId))
//                    }
                    AButton(
                        title: "log in",
                        background: .purple
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                //create account button
                VStack {
                    Text("first time here?")
                    NavigationLink("create an account here!", destination: RegisterView())
                }
                .padding(.bottom, 50)       //pushes up the sign up vstack
                .tint(.cyan)
                Image("littlePeepleTransparent")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, -25)
                    .edgesIgnoringSafeArea(.all)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
