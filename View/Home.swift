//
//  Home.swift
//  Diet Monitor
//
//  Created by Jinal Dave on 5/13/22.
//

import SwiftUI

struct Home: View {
        
    @State var showSignup = false
    
    var body: some View {
        
        ZStack {
            
            Image("bgsignup")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            if showSignup {
                Signup()
                    .transition(.move(edge: .trailing))
            }
            else{
                Login()
                    .transition(.move(edge: .trailing))
            }
        }
        .overlay(
            
            HStack{
                
                Text(showSignup ? "New Member" : "Already a Member?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Button(action: {
                    withAnimation{
                        showSignup.toggle()
                    }
                }, label: {
                    Text(showSignup ? "Log in" : "Log In")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                })
            }
            ,alignment: .bottom
        )
        
}

 
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
.previewInterfaceOrientation(.portrait)
    }
}
}
