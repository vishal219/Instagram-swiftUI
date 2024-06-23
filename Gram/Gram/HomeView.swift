//
//  HomeView.swift
//  Gram
//
//  Created by IndianRenters on 23/06/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var users: [String] = ["gcg","cff","cff","cff","cff","cff"]
    var body: some View {
        VStack {
            HStack {
                Image("logo-written")
                
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
                    .frame(width: 100)
                    .padding(.horizontal,40)
                Spacer(minLength: 10)
                HStack {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing,5)
                    Image("message")
                }
                    .frame(height: 30)
                    .padding(.horizontal,20)
                    .padding(.bottom, 20)
                
            }
            .frame(maxWidth: .infinity, maxHeight:80)
            
            ScrollView(.vertical) {
                
                ScrollView(.horizontal,showsIndicators: false) {
                    LazyHGrid(rows: [GridItem()]) {
                        ForEach(0..<9) { index in
                            ZStack {
                                Circle()
                                if index == 0 {
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                        .foregroundStyle(.white)
                                        .offset(x: 18,y: 18)
                                }
                            }
                        }
                    }
                    .frame(height: 60)
                    // .frame(maxWidth: UIScreen.main.bounds.width - 20,maxHeight: 60)
                    .padding(.leading, 10)
                }
                
                LazyVGrid(columns: [GridItem()]) {
                    ForEach(0..<1) {index in
                        Group {
                            VStack {
                                HStack(alignment: .center) {
                                    Circle()
                                        .frame(width: 50,height: 50)
                                    Text("Vishal219")
                                        .font(.title3)
                                        .padding(.top, 5)
                                    Image(systemName: "checkmark.seal.fill").foregroundStyle(.blue)
                                    Spacer()
                                    
                                    
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
        
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
