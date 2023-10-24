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
    @State var isShowingWebFrameworkDetail: Bool = false

    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Spacer()
                AppFrameworkView(framework: framework)
                Spacer()
                TextView(framework: framework)
                
                Spacer()
                
                Button {
                    isShowingWebFrameworkDetail = true
                } label: {
//                    ButtonView(buttonText: "Learn more", buttonBackgroundColor: .red)
                    Label("Learn More", systemImage: "book.fill")
                }
                // new in ios 15
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.red)
                
                .fullScreenCover(isPresented: $isShowingWebFrameworkDetail) {
                    SafariWebView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
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
