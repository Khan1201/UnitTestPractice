//
//  ViewModel.swift
//  UnitTestPractice
//
//  Created by 윤형석 on 2023/06/14.
//

import Foundation
import Combine

final class ViewModel: ObservableObject {
    @Published private(set) var count: Int = 0
    @Published private(set) var isOn: Bool = false
    @Published private(set) var errorMessage: String = ""
    private var cancellable = Set<AnyCancellable>()
    
    let buttonTitle: String = "+"
    @Published var stateTitle: String = "off"
    
    init() {
        subscribeCount()
    }
    
    func increseCount() {
        count += 1
    }
    
    func subscribeCount() {
        $count
            .dropFirst()
            .sink { [weak self] value in
                if value == 3 {
                    self?.isOn = true
                    self?.stateTitle = "on"
                }
            }
            .store(in: &cancellable)
    }
}
