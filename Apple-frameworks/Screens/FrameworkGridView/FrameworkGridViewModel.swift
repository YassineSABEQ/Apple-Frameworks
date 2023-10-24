//
//  FrameworkGridViewModel.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 23/10/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
   @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
