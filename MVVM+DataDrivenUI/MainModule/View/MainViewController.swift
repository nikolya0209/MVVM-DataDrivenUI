//
//  ViewController.swift
//  MVVM+DataDrivenUI
//
//  Created by MacBookPro on 22.01.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private var viewModel = MainViewModel()
    private var testView = TestView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView()
        updateView()
    }
    
    @IBAction func startAction(_ sender: Any) {
        viewModel.startFetch()
    }
    @IBAction func errorAction(_ sender: Any) {
        viewModel.error()
    }
    private func createView() {
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    private func updateView() {
        viewModel.updateViewData = { [weak self] viewData in
            self?.testView.viewData = viewData
        }
    }
}

