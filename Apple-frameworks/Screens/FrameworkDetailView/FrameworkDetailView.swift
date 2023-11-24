//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 23/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
        
    @ObservedObject var viewModel: FrameworkDetailViewModel

    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Spacer()
                AppFrameworkView(framework: viewModel.framework)
                Spacer()
                TextView(framework: viewModel.framework)
                
                Spacer()
                
                Button {
                    viewModel.isShowingWebFrameworkDetail = true
                } label: {
//                    ButtonView(buttonText: "Learn more", buttonBackgroundColor: .red)
                    Label("Learn More", systemImage: "book.fill")
                }
                // new in ios 15
                .buttonStyle(.bordered)
                .controlSize(.large)
                .tint(.red)
                
                .fullScreenCover(isPresented: $viewModel.isShowingWebFrameworkDetail) {
                    SafariWebView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
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
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingWebFrameworkDetail: false))
    }
}
