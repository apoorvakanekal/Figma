//
//  HomePageView.swift
//  Figma
//
//  Created by Apoorva Kanekal on 10/18/23.
//

import SwiftUI

struct HomePageView: View {
    
    @AppStorage("isHearted") private var isHearted = false
    
    @State private var showDetail = false
    @State private var isSelectedTab = true
    
    var body: some View {
        
        VStack{
            // Top Bar
            HStack {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .imageScale(.large)

                Spacer()
                
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(
                                width: 100,
                                height: 40
                                )
                            .foregroundColor(.yellow)
                            .offset(
                                x: isSelectedTab ? 0 : 105,
                                y:0
                            )
                        
                        Button{
                            withAnimation(.easeInOut(duration: 1)){
                                self.isSelectedTab.toggle()
                            }
                        } label: {
                            Text("Stay Local")
                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                        }
                    }
                    .frame(height: 40)
                    
                    Button{
                        withAnimation(.easeInOut(duration: 1)){
                            self.isSelectedTab.toggle()
                        }
                        
                    } label: {
                        Text("Go Global")
                            .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 15))
                    }
                    
                }
                .background(.pink)
                .cornerRadius(20)
                
                Spacer()
                
                Image(systemName: "person.crop.circle.fill")
                    .imageScale(.large)
            }
            .padding()
            
            // Image
            ZStack{
                Image("croissant")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        
                
                //Tab buttons
                VStack{
                    
                    HStack{
                        Text("Rec")
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .background(.yellow)
                            .cornerRadius(10)
                        Text("Experience")
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .background(.pink)
                            .cornerRadius(10)
                        Text("Class")
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .background(.pink)
                            .cornerRadius(10)
                    }
                    .padding(.leading)
                    .padding(.top)
                    .frame(
                        maxWidth:.infinity,
                        alignment: .leadingFirstTextBaseline
                    )
                    
                    Spacer()
                    
                    // Description Box
                    ZStack{
                        
                        Button{
                            withAnimation(.easeInOut(duration: 1)){
                                showDetail.toggle()
                            }
                        }label: {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.white)
                                .opacity(0.8)
                                .frame(
                                    width: 350,
                                    height: showDetail ? .infinity : 200
                                )
                                .padding()
                                .padding(.bottom)
                        }
                        
                        //Description Info
                        VStack{
                            HStack{
                                Image(systemName: "person.crop.circle.fill")
                                    .imageScale(.large)
                                    .padding(.leading)
                                Text("Jane Doe")
                                    .font(.footnote)
                                
                                HStack{
                                    Button(action: {
                                        self.isHearted.toggle()
                                    }) {
                                        if isHearted {
                                            Image(systemName: "heart.fill")
                                                .imageScale(.large)
                                        }
                                        else{
                                            Image(systemName: "heart")
                                                .imageScale(.large)
                                        }
                                    }
                                    Image(systemName: "pin")
                                        .imageScale(.large)
                                    Image(systemName: "bubble.left.and.bubble.right")
                                        .imageScale(.large)
                                }
                                .padding(.trailing)
                                .frame(
                                    maxWidth:.infinity,
                                    alignment: .topTrailing
                                )
                            }
                            .frame(
                                maxWidth:.infinity,
                                alignment: .topLeading
                            )
                            VStack{
                                Text("12 October 2023")
                                    .padding(.bottom, 5)
                                    .font(.caption)
                                    .frame(
                                        maxWidth:.infinity,
                                        alignment: .leading
                                    )
                                Text("La Cuisine Paris: Dessert cooking class")
                                    .padding(.bottom, 5)
                                    .fontWeight(.bold)
                                    .frame(
                                        maxWidth:.infinity,
                                        alignment: .leading
                                    )
                                Text("Learn to make your own croissants!! The centrally located La Cuisine Paris cooking school has a range of culinary course in English...")
                                    .font(.caption)
                                    .frame(
                                        maxWidth:.infinity,
                                        alignment: .leading
                                    )
                            }
                            .padding()
                        }
                        .padding()
                    }
                }
            }
        }
        .padding()
    }
}

