//
//  CounterViewModelIput.swift
//  RxSwiftCounterApp
//
//  Created by sasada mai on 2020/10/21.
//  Copyright © 2020 sasada mai. All rights reserved.
//

import RxSwift
import RxCocoa

struct CounterViewModelInput {
    let countUpButton: Observable<Void>
    let countDownButton: Observable<Void>
    let countResetButton: Observable<Void>
}

protocol CounterViewModelOutput {
    var counterText: Driver<String?> { get }
}

protocol CounterViewModelType {
    var outputs: CounterViewModelOutput? { get }
    func setup(input: CounterViewModelInput)
}


//
