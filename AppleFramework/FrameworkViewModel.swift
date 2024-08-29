//
//  FrameworkViewModel.swift
//  AppleFramework
//
//  Created by Prince Kumar on 2/10/24.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    
    var selectedFramework : Framework? {
        didSet {
            isShowingDefaultView = true
        }
    }
    @Published var isShowingDefaultView = false
}

