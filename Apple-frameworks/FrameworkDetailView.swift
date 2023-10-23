//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 23/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
        
    let framework: Framework
    @Binding var isShowingDetailView: Bool

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }.padding()
            }
            
            VStack(spacing: 10) {
                Spacer()
                AppFrameworkView(framework: framework)
                
                Text(framework.description)
                    .font(.body)
                    .fontWeight(.light)
                    .lineLimit(nil)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Button {
                } label: {
                    ButtonView(buttonText: "Learn more", buttonBackgroundColor: .red)
                }
            }
        }
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
                .padding()
        }
    }


struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
