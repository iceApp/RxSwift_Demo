//
//  ViewController.swift
//  RxSwiftCounterApp
//
//  Created by sasada.m on 2020/10/17.
//  Copyright © 2020 sasada.m. All rights reserved.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var countResetButton: UIButton!
    
    private var viewModel: CounterRxViewModel!
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    func setupViewModel() {
        viewModel = CounterRxViewModel()
        let input = CounterViewModelInput(countUpButton: countUpButton.rx.tap.asObservable(), countDownButton: countDownButton.rx.tap.asObservable(), countResetButton: countResetButton.rx.tap.asObservable())
        viewModel.setup(input: input)
        viewModel.outputs?.counterText
            .drive(countLabel.rx.text)
        .disposed(by: disposeBag)
    }
}




//class ViewController: UIViewController {
////   delegateでの方法
//    private let presenter = CounterPresenter()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        presenter.attachView(self)
//    }
//
//    @IBOutlet weak var countLabel: UILabel!
//
//    @IBAction func countUp(_ sender: Any) {
//        presenter.incrementCoun()
//    }
//
//    @IBAction func countDown(_ sender: Any) {
//        presenter.decrementCount()
//    }
//
//    @IBAction func countReset(_ sender: Any) {
//        presenter.resetCount()
//    }
//
//////  callbackでの方法
////    private var viewModel: CounterViewModel!
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        viewModel = CounterViewModel()
////    }
////
////    @IBOutlet weak var countLabel: UILabel!
////
////    @IBAction func countUp(_ sender: Any) {
////        viewModel.increment(callback: {[weak self] count in
////            self?.updateCountLabel(count)
////        })
////    }
////
////    @IBAction func countDown(_ sender: Any) {
////        viewModel.decrementCount(callback: {[weak self] count in
////            self?.updateCountLabel(count)
////        })
////    }
////
////    @IBAction func countReset(_ sender: Any) {
////        viewModel.resetCount(callback: {[weak self] count in
////            self?.updateCountLabel(count)
////        })
////    }
////
////    func updateCountLabel(_ count: Int) {
////        countLabel.text = String(count)
////    }
//
//}
//
//extension ViewController: CounterDelegate {
//    func updateCount(count: Int) {
//        countLabel.text = String(count)
//    }
//
//}

