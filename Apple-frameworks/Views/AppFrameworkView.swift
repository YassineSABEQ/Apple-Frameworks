//
//  AppFrameworkView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 24/10/2023.
//

import SwiftUI

struct AppFrameworkView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct AppFrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        AppFrameworkView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
