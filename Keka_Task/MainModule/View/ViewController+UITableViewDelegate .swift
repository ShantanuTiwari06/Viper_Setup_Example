//
//  ViewController+UITableViewDelegate .swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit


// MARK: - Protocol Methods - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
