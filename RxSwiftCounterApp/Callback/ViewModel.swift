//
//  ViewModel.swift
//  RxSwiftCounterApp
//
//  Created by sasada.m on 2020/10/19.
//  Copyright © 2020 sasada mai. All rights reserved.
//

import Foundation

class CounterViewModel {
    
    private(set) var count = 0
    
    func increment(callback: (Int) -> ()) {
        count += 1
        callback(count)
    }
    
    func decrementCount(callback: (Int) ->()) {
        count -= 1
        callback(count)
    }
    
    func resetCount(callback: (Int) -> ()) {
        count = 0
        callback(count)
    }
}
