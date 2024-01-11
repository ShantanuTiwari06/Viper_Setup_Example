//
//  ViewControllerRouter.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit

protocol ViewControllerRouterProtocol { }

class ViewControllerRouter: ViewControllerRouterProtocol {
    
    weak var view: ViewController?

    init(view: ViewController) {
        self.view = view
    }
    
    static func getView() -> ViewController? {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController") as? ViewController else {
            return nil
        }
        let configrator = ViewControllerConfigrator()
        vc.configrator = configrator
        return vc
    }
}
