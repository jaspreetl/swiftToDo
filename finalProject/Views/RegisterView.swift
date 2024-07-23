//
//  RegisterView.swift
//  finalProject
//
//  Created by Jaspreet L. on 12/1/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()

//    @State var name = ""
//    @State var email = ""
//    @State var password = ""

    var body: some View {
        VStack {
            HeaderView(subtitle: "registering...", background: .yellow)
            Form {
                TextField("full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()

                TextField("email address", text: $viewModel.email)
                    .autocorrectionDisabled()
                    .textFieldStyle(DefaultTextFieldStyle())
                // shows asterix instead of letters being typed
                SecureField("password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()

//                VStack {
//                    NavigationLink("register", destination: ListView())
//                }
                AButton(
                    title: "register",
                    background: .yellow
                ) {
                    // functionality here
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
