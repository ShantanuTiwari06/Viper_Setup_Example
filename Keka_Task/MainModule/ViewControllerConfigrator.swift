//
//  ViewControllerConfigrator.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import Foundation

protocol ViewControllerConfigratorProtocol {
    func config(view: ViewController)
}

// MARK: - Class - MainConfigrator
class ViewControllerConfigrator: ViewControllerConfigratorProtocol {

    init() {
    }
    
    func config(view: ViewController) {
        let interactor = ViewControllerInteractor()
        let router = ViewControllerRouter(view: view)
        let presenter = ViewControllerPresenter(
            view: view,
            interactor: interactor,
            router: router
        )
        view.presenter = presenter
    }
}
