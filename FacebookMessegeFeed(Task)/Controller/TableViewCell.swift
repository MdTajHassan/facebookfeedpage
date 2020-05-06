//
//  TableViewCell.swift
//  FacebookMessegeFeed(Task)
//
//  Created by mehtab alam on 06/05/2020.
//  Copyright © 2020 taj hassan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var statusImage: UIImageView!
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
