//
//  EnterBioView.swift
//  Gram
//
//  Created by IndianRenters on 23/06/24.
//

import SwiftUI

struct EnterBioView: View {
    
    @State var bio: String = ""
    @State var validated: Int? = 0
    var body: some View {
        VStack {
            Image(AppImages.logoMedium)
                .resizable()
                .frame(width: 100,height: 100)
                .padding([.bottom], 50.0)
            
            Text("Enter Bio")
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
                .font(.headline)
                .foregroundStyle(.gray)
            TextEditor(text: $bio)
                .padding()
                .font(.title3)
                .fontWeight(.light)
                .font(.subheadline)
                .background(content: {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(.clear)
                        .stroke(.gray, style: .init())
                })
                .frame(height: 200.0)
            
            Spacer()
            
            NavigationLink(destination: TabbarView(), tag: 1, selection: $validated, label: {})
                Text("Continue")
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
    }
}

#Preview {
    EnterBioView()
}
