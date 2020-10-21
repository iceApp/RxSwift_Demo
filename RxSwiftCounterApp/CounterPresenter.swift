//
//  CounterPresenter.swift
//  RxSwiftCounterApp
//
//  Created by sasada mai on 2020/10/19.
//  Copyright © 2020 sasada mai. All rights reserved.
//

import Foundation

class CounterPresenter {
     var count: Int = 0 {
        didSet {
            delegate?.updateCount(count: count)
        }
    }
    
    private var delegate: CounterDelegate?
    
    func attachView(_ delegate: CounterDelegate) {
        self.delegate = delegate
    }
  
    func detachView() {
        self.delegate = nil
    }
    
    func incrementCoun() {
        count += 1
    }
    
    func decrementCount() {
        count -= 1
    }
    
    func resetCount() {
        count = 0
    }
    
}

protocol CounterDelegate {
    func updateCount(count: Int)
}
