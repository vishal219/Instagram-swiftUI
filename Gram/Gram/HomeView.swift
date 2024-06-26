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
            HeaderView()
            
            ScrollView(.vertical) {
                StoriesView()
                PostListView()
            }
        
            Spacer()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    HomeView()
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("logo-written")
            
                .resizable()
                .aspectRatio(contentMode: .fill)
            
                .frame(width: 100)
                .padding(.horizontal,40)
            Spacer(minLength: 10)
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing,5)
                })
                .foregroundColor(.black)
                
                Button(action: {
                    
                }, label: {
                    Image("message")
                })
                
            }
            .frame(height: 30)
            .padding(.horizontal,20)
            .padding(.bottom, 20)
            
        }
        .frame(maxWidth: .infinity, maxHeight:80)
    }
}

struct StoriesView: View {
    var body: some View {
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
    }
}

struct PostListView: View {
    var body: some View {
        LazyVGrid(columns: [GridItem()]) {
            ForEach(0..<5) {index in
                Group {
                    VStack(alignment: .leading){
                        HStack(alignment: .center) {
                            Circle()
                                .frame(width: 50,height: 50)
                                .padding(.leading,2.0)
                            Text("Vishal219")
                                .font(.title3)
                                .padding(.top, 5)
                            Image(systemName: "checkmark.seal.fill").foregroundStyle(.blue)
                            Spacer()
                            
                            
                            Image("three-dots")
                                
                            
                        }
                        
                        
                        Image("demo-post-2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width)
                            .frame(maxHeight: 350)
                            .padding(.vertical)
                           
                        
                        
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "heart")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing,5)
                            })
                            .frame(width: 35,height: 35)
                            .foregroundColor(.black)
                            Button(action: {
                                
                            }, label: {
                                Image("comment-icon")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                            })
                            .frame(width: 35,height: 35)
                            .foregroundColor(.black)
                            Spacer()
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "bookmark")
                                    .resizable()
                                    .frame(width: 25, height: 30, alignment: .trailing)
                            })
                            .foregroundColor(.black)
                        }
                        .frame(height: 55)
                        .padding(.leading)
                        
                        
                        HStack {
                            Text("1,00,0789 Likes")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .padding(.leading,6.0)
                            Spacer()
                        }
                            
                        
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                            .multilineTextAlignment(.leading)
                            .padding(.leading,6.0)
                        Button(action: {
                            
                        }, label: {
                            Text("View all 990 comments")
                                .font(.system(size: 15.0))
                                .fontWeight(.regular)
                                .foregroundStyle(.gray)
                        })
                        .padding(.top,10.0)
                        .padding(.leading,6.0)
                        
                        Text("13 Hours Ago")
                            .font(.system(size: 13.0))
                            .fontWeight(.regular)
                            .foregroundStyle(.gray)
                            .padding(.top,1.0)
                            .padding(.leading,6.0)
                        
                    }
                }
                .padding()
            }
        }
    }
}
