//
//  FrameworkDetailViewModel.swift
//  Apple-frameworks
//
//  Created by Yassine Sabeq on 24/11/2023.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    @Published var isShowingWebFrameworkDetail: Bool = false
    
    init(framework: Framework, isShowingWebFrameworkDetail: Bool) {
        self.framework = framework
        self.isShowingWebFrameworkDetail = isShowingWebFrameworkDetail
    }
}
