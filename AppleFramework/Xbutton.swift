//
//  Xbutton.swift
//  AppleFramework
//
//  Created by Prince Kumar on 2/10/24.
//

import SwiftUI

struct Xbutton: View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
                    .padding(15)
            }
        }
    }
}

#Preview {
    Xbutton(isShowingDetailView: .constant(false))
}
