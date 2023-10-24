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
            NavigationView {
                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: viewModel.columns) {
                        ForEach(MockData.frameworks) { framework in
                            AppFrameworkView(framework: framework)
                                .onTapGesture {
                                    viewModel.selectedFramework = framework
                                }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

