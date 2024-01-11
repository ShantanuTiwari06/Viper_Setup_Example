//
//  ViewControllerPresenter.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import Foundation

protocol ViewControllerPresenterProtocol {
    var isLoading: Bool { get set }
    func numberOfRows() -> Int
    func setup(view: DataTableViewCellProtocol, index: Int)
}

class ViewControllerPresenter {
    
    weak var view: ViewControllerProtocol?
    var interactor: ViewControllerInteractorProtocol
    var router: ViewControllerRouterProtocol

    var apiResponseData: [Result]?
    var isLoading = true

    init(
        view: ViewControllerProtocol,
        interactor: ViewControllerInteractorProtocol,
        router: ViewControllerRouterProtocol
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.callData()
    }
    
    func callData() {
        interactor.apiCall { data, error in
            if let data = data {
                self.apiResponseData = data
                self.isLoading = false
                DispatchQueue.main.async {
                    self.view?.reloadTable()
                }
            } else {
                print("there is something miss")
            }
        }
    }
    
    
}

extension ViewControllerPresenter: ViewControllerPresenterProtocol {
    func numberOfRows() -> Int {
        if isLoading {
            return 0
        }
        return apiResponseData?.count ?? 0
    }
    
    func setup(view: DataTableViewCellProtocol, index: Int) {
        view.setupCell(data: apiResponseData?[index])
    }
}
