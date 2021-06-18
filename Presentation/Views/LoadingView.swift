//
//  LoadingView.swift
//  Presentation
//
//  Created by bruno araujo on 18/06/21.
//

import Foundation

 public protocol LoadingView {
     func display(viewModel: LoadingViewModel)
 }

 public struct LoadingViewModel: Equatable {
     public var isLoading: Bool

     public init(isLoading: Bool) {
         self.isLoading = isLoading
     }
 }
