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
    func error()
}

final class MainViewModel: MainViewModelProtocol {
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    public func error() {
        updateViewData?(.failure(ViewData.Data(icon: "failure",
                                                     title: "Error",
                                                     description: "Not user",
                                                     numberPhone: nil)))
    }
    
    public func startFetch() {
        updateViewData?(.success(ViewData.Data(icon: "success",
                                                     title: "Succes",
                                                     description: "Good",
                                                     numberPhone: nil)))
    }
}
