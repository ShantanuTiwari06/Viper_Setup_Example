//
//  ViewController.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit

protocol ViewControllerProtocol: AnyObject {
    func reloadTable()
}

class ViewController: UIViewController, ViewControllerProtocol {

    var presenter: ViewControllerPresenterProtocol!
    var configrator = ViewControllerConfigrator()

    var isLoading: Bool = true {
        didSet {
            self.tableView.isUserInteractionEnabled = !isLoading
            self.tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configrator.config(view: self)
        setupTableView()
    }
    
    
    func setupTableView() {
        tableView.registerClass(DataTableViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func reloadTable() {
        self.isLoading = self.presenter.isLoading
    }
}
