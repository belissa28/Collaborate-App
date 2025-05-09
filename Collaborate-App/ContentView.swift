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
            Text("Sign up")
                
                //.font(.headline)
                .font(.system(size:25))
                .foregroundColor(.white) // Optional: change text color for contrast
                //.padding()
            Text("I am a...").foregroundColor(.white)
            VStack(spacing: 16) {
                Button("Content Creator") {
                    print("Content Creator tapped")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)

                Button("Business Owner") {
                    print("Business Owner tapped")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            .padding(.horizontal, 30)//            TextField("Content Creator", text: $contentcreator)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//            TextField("Business Owner", text: $businessowner)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack{
                Text("Already have an account?").foregroundColor(.white)
                Text("Log in").underline().foregroundColor(isTapped ? .gray : .white).onTapGesture{
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
