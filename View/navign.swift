//
//  navign.swift
//  Diet Monitor
//
//  Created by Jinal Dave on 5/13/22.
//

import SwiftUI

struct navign: View {
    var body: some View {
        TabView{
            ProfileView()
                .tabItem {
                    Image(systemName:"person")
                    Text("Profile")
                }
            PlannerView()
                .tabItem {
                    Image(systemName:"smiley")
                    Text("Meal Planner")
                }
            TrackerView()
                .tabItem {
                    Image(systemName:"chart.xyaxis.line")
                    Text("Meal Tracker")
                }
            CalorieView()
                .tabItem {
                    Image(systemName:"table")
                    Text("Calorie Calculator")
                }
        }
        }
    }

struct ProfileView: View{
    
    var body: some View{
        NavigationView{
            ZStack {
                Color.pink
            }
            .navigationTitle("Profile")
        }
    }
    
}

struct PlannerView: View{
    
    var body: some View{
        
        NavigationView{
            ZStack{
                Color.pink
            }
            .navigationTitle("Meal Planner")
        }
    }
}

struct TrackerView: View{
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.pink
                
            }
            .navigationTitle("Meal Tracker")
        }
    }
}

struct CalorieView: View{
    
    var body: some View{
        NavigationView{
            ZStack{
                Color.pink
            }
            .navigationTitle("Calorie Counter")
        }
    }
}
