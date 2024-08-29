//
//  AFButton.swift
//  AppleFramework
//
//  Created by Prince Kumar on 2/10/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.black)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Button")
}
