//
//  ViewController.swift
//  RxSwiftCounterApp
//
//  Created by sasada mai on 2020/10/17.
//  Copyright © 2020 sasada mai. All rights reserved.
//
import Foundation

import UIKit

class ViewController: UIViewController {

    private let presenter = CounterPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
    }

    @IBOutlet weak var countLabel: UILabel!

    @IBAction func countUp(_ sender: Any) {
        presenter.incrementCoun()
    }

    @IBAction func countDown(_ sender: Any) {
        presenter.decrementCount()
    }

    @IBAction func countReset(_ sender: Any) {
        presenter.resetCount()
    }

    
//    private var viewModel: CounterViewModel!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        viewModel = CounterViewModel()
//    }
//
//    @IBOutlet weak var countLabel: UILabel!
//
//    @IBAction func countUp(_ sender: Any) {
//        viewModel.increment(callback: {[weak self] count in
//            self?.updateCountLabel(count)
//        })
//    }
//
//    @IBAction func countDown(_ sender: Any) {
//        viewModel.decrementCount(callback: {[weak self] count in
//            self?.updateCountLabel(count)
//        })
//    }
//
//    @IBAction func countReset(_ sender: Any) {
//        viewModel.resetCount(callback: {[weak self] count in
//            self?.updateCountLabel(count)
//        })
//    }
//
//    func updateCountLabel(_ count: Int) {
//        countLabel.text = String(count)
//    }

}

extension ViewController: CounterDelegate {
    func updateCount(count: Int) {
        countLabel.text = String(count)
    }

}

