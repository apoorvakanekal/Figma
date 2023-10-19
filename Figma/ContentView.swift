//
//  ContentView.swift
//  Figma
//
//  Created by Apoorva Kanekal on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomePageView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            AddView()
                .tabItem { 
                    Label("Add", systemImage: "plus.circle.fill")
                }
            BookingView()
                .tabItem {
                    Label("Booking", systemImage: "book")
                }
        }
    }
}

#Preview {
    ContentView()
}
