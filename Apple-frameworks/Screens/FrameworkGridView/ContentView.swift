//
//  ContentView.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 22/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        // Navigation Stack is new in iOS 16
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            AppFrameworkView(framework: framework)
                        }
                    }
                }
            }
            .padding(.top)
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: framework, isShowingWebFrameworkDetail: false))
            }
        }
        .accentColor(Color(.label))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

