//
////  BusinessOwnerSignUp.swift
////  Collaborate-App
////
////  Created by Belissa on 5/10/25.
////

import Foundation

import SwiftUI

struct BusinessOwnerSignUp: View{
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var businessName: String = ""
    @State private var socialMediaHandle: String = ""
    
    var body: some View{
        
        //ZStack{
        //NavigationView{
            VStack{
                Text("Sign Up")
                        .font(.title)
                        .bold()
                        .padding(.top, -40)//adding negative makes it go up
                    Text("Business Owner")
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
                    
                    TextField("Business Name", text: $businessName)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )
                    TextField("Social Media Handle", text: $socialMediaHandle)
                        .padding()
                        .frame(width: 250)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black)
                        )                    //Spacer()
                    
                    Spacer()
                }
                NavigationLink(destination: BusinessOwnerView()){
                    Text("Sign up")
                        .font(.system(size: 14)) // smaller font
                        .bold()
                        .frame(width: 100, height: 30)
//                        .overlay(
//                    
                    
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        //.background(Color.white)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [.purple, .blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                Spacer()
                
                

            
        //    }
            //Spacer()
        //Spacer()
            
        }
       
    //}
    }
    
    
    
    
    
    
    struct BusinessOwnerSignUp_Previews: PreviewProvider {
        static var previews: some View {
            BusinessOwnerSignUp()
        }
    }
    
}
