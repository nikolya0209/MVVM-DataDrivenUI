//
//  MainViewModel.swift
//  MVVM+DataDrivenUI
//
//  Created by MacBookPro on 22.01.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? { get set }
    func startFetch()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    public func startFetch() {
        // start loading
        updateViewData?(.loading(ViewData.Data(icon: nil,
                                               title: nil,
                                               description: nil,
                                               numberPhone: nil)))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.updateViewData?(.success(ViewData.Data(icon: "succes",
                                                         title: "Succes",
                                                         description: "Good",
                                                         numberPhone: nil)))
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) { [weak self] in
            self?.updateViewData?(.failure(ViewData.Data(icon: "failure",
                                                         title: "Error",
                                                         description: "Not user",
                                                         numberPhone: nil)))
        }
        
    }
}
