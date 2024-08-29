//
//  DetailedView.swift
//  AppleFramework
//
//  Created by Prince Kumar on 2/10/24.
//

import SwiftUI

struct DetailedView: View {
    
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    var framework : Framework
    
    var body: some View {
        VStack {
            Xbutton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            createAppIcon(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    DetailedView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
