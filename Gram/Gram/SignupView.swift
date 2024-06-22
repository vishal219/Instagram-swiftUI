//
//  SignupView.swift
//  Gram
//
//  Created by Vishal on 23/06/24.
//

import SwiftUI

struct SignupView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var validated: Int? = 0
    
    var body: some View {
        VStack {
            Image(AppImages.logoMedium)
                .resizable()
                .frame(width: 100,height: 100)
                .padding([.bottom], 50.0)
            
            
            
            Button(action: {
                //TODO: ADD fb login
            }, label: {
                HStack {
                    Text("SignUp with Facebook")
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Image(AppImages.logoFbSmall)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
            })
            .cornerRadius(10.0)
            
            HStack {
                RoundedRectangle(cornerRadius: 1.0)
                    .frame(width: 80,height: 1.0)
                    
                Text("OR")
                RoundedRectangle(cornerRadius: 1.0)
                    .frame(width: 80,height: 1.0)
                    
                
            }
            .padding([.top,.bottom],40.0)
            
            TextField("Email", text: $email)
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
            
            Text("By clicking singnup you agree to the terms & conditions")
                .frame(maxWidth: .infinity)
                .font(.caption)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
                .padding(.top,20.0)
                
                
            Spacer()
            
            NavigationLink(destination: EnterBioView(), tag: 1, selection: $validated, label: {})
           
                //NavigationLink("SignUp", destination: EnterBioView())
                    Text("Signup")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10.0)
                    .onTapGesture {
                        self.validated = 1
                    }
        }
        .padding()
        .padding(.top,40.0)
        //.toolbar(.hidden)
    }
}

#Preview {
    SignupView()
}
