//
//  ContentView.swift
//  Collaborate-App
//
//  Created by Belissa on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    //@State private var contentcreator: String = ""
    //@State private var businessowner: String = ""
    
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
                .padding()
            //Spacer().frame(height: 5)
            Text("Log in")
                
                //.font(.headline)
                .font(.system(size:25))
                .foregroundColor(.white) // Optional: change text color for contrast
                //.padding()
            Text("I am a...").foregroundColor(.white)
                //NavigationView{
                VStack(spacing: 16) {
                //NavigationLink(destination: ContentCreatorView()){
                
                NavigationLink(destination: ContentCreatorView()) {
                    Text("Content Creator")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                
            
                
            NavigationLink(destination: BusinessOwnerView()){
                Text("Business Owner")
                  
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            
            }
                }
                          
            .padding(.horizontal, 30)
                
            HStack{
                Text("Don't have an account yet?").foregroundColor(.white)
                Text("Sign up").underline().foregroundColor(isTapped ? .gray : .white).onTapGesture{
                    isTapped.toggle()
                    print("Log in tapped")
                }
            }
            .padding()
          
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
