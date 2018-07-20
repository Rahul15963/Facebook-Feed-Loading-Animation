//
//  NotificationCell.swift
//  EPGA
//
//  Created by Rahul Dasgupta on 24/06/18.
//  Copyright © 2018 Rahul Dasgupta. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var containerView: UIVisualEffectView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var notificationMessagelabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func config() {
        containerView.layer.cornerRadius = 8
        containerView.clipsToBounds = true
        notificationMessagelabel.text = "Demo"
        dateLabel.text = "2018-03-18"

        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
