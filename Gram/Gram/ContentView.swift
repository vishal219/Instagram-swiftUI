//
//  ContentView.swift
//  Gram
//
//  Created by Vishal on 22/06/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image(AppImages.logoMedium)
                    .resizable()
                    .frame(width: 100,height: 100)
                    .padding([.bottom], 50.0)
                
                TextField("Email or Username", text: $email)
                    .padding(15.0)
                
                    .cornerRadius(10.0)
                    .background(content: {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 200, green: 200, blue: 200))
                            .stroke(Color.gray)
                        
                        
                    })
                
                TextField("Password", text: $password)
                    .padding(15.0)
                    .cornerRadius(10.0)
                    .background(content: {
                    RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color(red: 200, green: 200, blue: 200))
                            .stroke(Color.gray)
                    })
                HStack {
                    Spacer()
                    NavigationLink("Forgot Password?", destination: Text("Destination"))
                }
                .padding([.top])
                
                Button(action: {
                    
                }, label: {
                    Text("Log In")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10.0)
                })
                .padding(.top,20.0)
                
                Spacer()
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.gray)
                    NavigationLink("SignUp", destination: SignupView())
                        
                }
                
               
                
            }
            .padding()
            .padding([.top],40.0)
        }
    }
}

#Preview {
    LoginView()
}
