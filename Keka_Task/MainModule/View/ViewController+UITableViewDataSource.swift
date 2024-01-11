//
//  ViewController+UITableViewDataSource.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit

// MARK: - Protocol Methods - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for: indexPath) as? DataTableViewCell else { fatalError() }
        self.presenter.setup(view: cell, index: indexPath.row)
        return cell
    }
}
