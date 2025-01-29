//
//  Login.swift
//  Diet Monitor
//
//  Created by Jinal Dave on 5/13/22.
//

import SwiftUI

struct Login: View {
    
    @State var name = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            
            Image("bgsignup")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack{
                    
                    Text("Log In")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        
                        Text("Your name")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        TextField("Jinal", text:$name)
                            .font(.system(size: 20, weight:.semibold))
                            .foregroundColor(.gray)
                            .padding(.top,5)
                        
                        Divider()
                    })
                        .padding(.top,25)
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                    
                    Text("Password")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    SecureField("Jinal123", text:$password)
                        .font(.system(size: 20, weight:.semibold))
                        .foregroundColor(.gray)
                        .padding(.top,5)
                    
                    Divider()
                    })
                    .padding(.top,20)
                    
                    Button(action: {
                    }, label:{
                        Text("Forogt Password?")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top,10)
                
                    
                    Button(action: {
                       
                    }, label: {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                            .shadow(color: Color("blue").opacity(0.6), radius: 5, x: 0, y: 0)
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,10)
                    }
            .padding()
            }
        .overlay(
            
            HStack{
                
                Text("Not a Member?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                Button(action: {}, label: {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                })
            }
            ,alignment: .bottom
        )
        
        }
    }




struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
