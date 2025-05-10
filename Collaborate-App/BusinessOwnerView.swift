//
//  BusinessOwnerView.swift
//  Collaborate-App
//
//  Created by Belissa on 5/10/25.
//

import Foundation
//

import SwiftUI

struct BusinessOwnerView: View {
    
    var body: some View {
        VStack {
            Text("Welcome, Business Owner!")
                .font(.title)
                .padding()
            }
                .navigationTitle("Business Owner")
    }
    
    
}

struct BusinessOwnerView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessOwnerView()
    }
}
