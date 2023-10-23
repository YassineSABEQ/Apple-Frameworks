//
//  ButtonView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 23/10/2023.
//

import SwiftUI

struct ButtonView: View {
    var buttonText: String
    var buttonBackgroundColor: Color
    
    var body: some View {
        Text(buttonText)
            .frame(width: 280, height: 50)
            .background(buttonBackgroundColor.gradient)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "Tap Me", buttonBackgroundColor: Color(.systemBlue))
    }
}
