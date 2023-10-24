//
//  TextView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 24/10/2023.
//

import SwiftUI

struct TextView: View {
    
    let framework: Framework
    
    var body: some View {
        Text(framework.description)
            .font(.body)
            .fontWeight(.light)
            .lineLimit(nil)
            .foregroundColor(.white)
            .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
