//
//  ContentView.swift
//  FinanceApp
//
//  Created by Abdullahi Addow on 6/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                TabView{
                    Text("Home")
                        .tabItem{
                            Image(systemName: "house")
                        }
                    Text("Options")
                        .tabItem{
                            Image(systemName: "folder.fill")
                        }
                    StatisticsView()
                        .tabItem{
                            Image(systemName: "slider.horizontal.3")
                        }
                    
                    Text("Settings")
                        .tabItem{
                            Image(systemName: "gearshape")
                        }
                    
                }.accentColor(.indigo)
            }.toolbar{
                ToolbarItem(placement:.principal){
                    Text("Statistics")
                        .font(.title2)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
