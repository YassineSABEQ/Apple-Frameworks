//
//  DismissButtonView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 24/10/2023.
//

import SwiftUI

struct DismissButtonView: View {
    
    @Binding var isShowingDetailView: Bool
    
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
            }
            .padding()
        }
    }
}

struct DismissButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DismissButtonView(isShowingDetailView: .constant(false))
    }
}
