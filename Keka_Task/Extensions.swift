//
//  Extensions.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit

// MARK: - Extension - UITableView
public extension UITableView {
    func registerClass(_ myClass: AnyClass) {
        let bundle = Bundle(for: myClass)
        let className = NSStringFromClass(myClass).components(separatedBy: ".").last
        self.register(UINib(nibName: className!, bundle: bundle), forCellReuseIdentifier: className!)
    }
}

public extension UIImageView {

    // Image Loader
    func loadImage(from urlString: String, into imageView: UIImageView) {
        guard let url = URL(string: urlString) else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                return
            }

            guard let imageData = data else {
                return
            }

            if let image = UIImage(data: imageData) {
                DispatchQueue.main.async {
                    imageView.image = image
                }
            }
        }
        task.resume()
    }
}


public extension String {
    // Time Formatter
    func timeFormatter(inputTime: String) -> String {
        let inputDateString = inputTime
        let inputDateFormatter = DateFormatter()
        inputDateFormatter.dateFormat = "yyyy-MM-dd"
        inputDateFormatter.timeZone = TimeZone(identifier: "UTC")
        
        if let inputDate = inputDateFormatter.date(from: inputDateString) {
            let outputDateFormatter = DateFormatter()
            outputDateFormatter.dateFormat = "dd MMM yyyy"
            outputDateFormatter.timeZone = TimeZone(identifier: "Asia/Kolkata")
            let outputDateString = outputDateFormatter.string(from: inputDate)
            return outputDateString
        } else {
            print("Error parsing the date.")
            return ""
        }
    }
}
