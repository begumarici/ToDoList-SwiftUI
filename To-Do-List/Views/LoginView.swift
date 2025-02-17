//
//  LoginView.swift
//  To-Do-List
//
//  Created by Begüm Arıcı on 16.02.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: -15, background: Color.blue)
                
                
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue){
                        viewModel.login()
                    }
                    .padding()
                }
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
