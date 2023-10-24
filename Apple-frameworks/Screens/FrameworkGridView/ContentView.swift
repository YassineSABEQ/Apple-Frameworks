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
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        AppFrameworkView(framework: framework)
                    }
                }
            }
            .padding(.top)
            .navigationTitle("🍎 Frameworks")
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

