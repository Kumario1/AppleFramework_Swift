//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Prince Kumar on 2/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkViewModel()
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible()),
                                
    ]
    
    var body: some View {
        NavigationView{
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        createAppIcon(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Framework")
            .sheet(isPresented: $viewModel.isShowingDefaultView) {
                DetailedView(isShowingDetailView: $viewModel.isShowingDefaultView, framework: viewModel.selectedFramework
                             ?? MockData.sampleFramework )
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct createAppIcon : View {
    
    let framework : Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                    .resizable()
                    .frame(width: 90 , height: 90)
            Text(framework.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .scaledToFit()
                    .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
