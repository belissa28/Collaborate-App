//
//  ContentView.swift
//  Collaborate-App
//
//  Created by Belissa on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView{
        ZStack {
            LinearGradient(
                            gradient: Gradient(colors: [.purple, .blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        .ignoresSafeArea()
            VStack{
            // Set the background color here
            
            Text("Collab")
                
                //.font(.title)
                .font(.system(size:60))
                .foregroundColor(.white) // Optional: change text color for contrast
                .bold()
                .padding(.top, -80)
        
            
                
                //.font(.headline)
                .font(.system(size:25))
                .foregroundColor(.white) // Optional: change text color for contrast
              
                VStack(spacing: 16) {
                //NavigationLink(destination: ContentCreatorView()){
                
//                NavigationLink(destination: ContentCreatorView()) {
                    TextField("Enter your name...", text: $userName)                    //Text("Content Creator")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                //}
                
            
                
            //NavigationLink(destination: BusinessOwnerView()){
                    TextField("Password...", text: $password)
                  
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            
            //}
                }
                          
            .padding(.horizontal, 30)
                
                Button(action: {
                    print("Log in tapped")
                }) {
                    Text("Log in")
                        .font(.system(size: 14)) // smaller font
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }

            HStack{
                Text("Don't have an account yet?").foregroundColor(.white)
                NavigationLink(destination: SignUp()){
                Text("Sign up")
                    .underline()
                    .foregroundColor(isTapped ? .gray : .white)
                    //print("Log in tapped")
                //}
        
            }
            }        .padding()
          
        }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
