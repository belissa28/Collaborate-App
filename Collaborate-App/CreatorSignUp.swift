//
//  CreatorSignUp.swift
//  Collaborate-App
//
//  Created by Belissa on 5/10/25.
//

import Foundation

import SwiftUI

struct CreatorSignUp: View{
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var tiktok: String = ""
    @State private var instagram: String = ""
    @State private var youtube: String = ""
    var body: some View{
        
        //ZStack{
            
            VStack{
                Text("Sign Up")
                        .font(.title)
                        .bold()
                        .padding(.top, 40)
                    Text("Content Creator")
                    .bold()
                    Spacer() // pushes content to the top
                
                Section{
                    TextField("Name", text: $name)
                        .padding()
                        .frame(width:250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)//makes it wounder
                                .stroke(Color.black)
                        )
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )                    //Spacer()
                    
                    TextField("Tik Tok", text: $tiktok)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )
                    TextField("Instagram", text: $instagram)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )
                    
                    //Spacer()
                    TextField("Youtube", text: $youtube)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )                    //Spacer()
                    
                    Spacer()
                    
                }
                
                

               
            }
        //Spacer()
            
        //}
    }
    
    
    
    
    
    
    
    
    struct CreatorSignUp_Previews: PreviewProvider {
        static var previews: some View {
            CreatorSignUp()
        }
    }
    
}
