//
//  Apple_MusicApp.swift
//  Apple Music
//
//  Created by Salvatore Capasso on 14/11/23.
//

import SwiftUI

@main
struct Apple_MusicApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView{
                
                ContentView().tabItem {
                    Image(systemName:"play.circle.fill")
                    Text("Listen Now")
                }
                
                ContentView().tabItem {
                    Image(systemName:"square.grid.2x2.fill")
                    Text("Browse")
                }
                
                ContentView().tabItem {
                    Image(systemName:"dot.radiowaves.left.and.right")
                    Text("Radio")}
                
                Library().tabItem {
                    Image(systemName:"play.square.stack.fill")
                    Text("Library")
                }
                
                ContentView().tabItem {
                    Image(systemName:"magnifyingglass")
                    Text("Search")
                }
            
            }.tint(.red)
            
        }
    }
}
