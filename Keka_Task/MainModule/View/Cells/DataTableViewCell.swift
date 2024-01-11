//
//  DataTableViewCell.swift
//  Keka_Task
//
//  Created by Shantanu - Rooter on 11/01/24.
//

import UIKit

protocol DataTableViewCellProtocol {
    func setupCell(data: Result?)
}

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var cellDataImages: UIImageView!
    @IBOutlet weak var cellTitleLabel: UILabel!
    @IBOutlet weak var cellDescriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var cellImageHeight: NSLayoutConstraint!
    @IBOutlet weak var cellImageWidth: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellDataImages.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension DataTableViewCell: DataTableViewCellProtocol {
    func setupCell(data: Result?) {
        if let data = data {
            cellTitleLabel.text = data.title
            cellDescriptionLabel.text = data.abstract
            
            // date
            if let date = data.published_date {
                let published_date = String().timeFormatter(inputTime: date)
                dateLabel.text = published_date
            }
            
            // images
            if let media = data.media, !media.isEmpty {
                cellDataImages.isHidden = false
                
                if !media[0].metadata.isEmpty {
                    let metaData = media[0].metadata[0]
                    guard let imageUrl = metaData.url else {
                        cellDataImages.isHidden = true
                        return
                    }
                    cellDataImages.loadImage(from: imageUrl, into: cellDataImages)
                    cellImageHeight.constant = media[0].metadata[0].height ?? 0.0
                    cellImageWidth.constant = media[0].metadata[0].width ?? 0.0
                }
            } else {
                cellDataImages.isHidden = true
            }
        }
    }
}
