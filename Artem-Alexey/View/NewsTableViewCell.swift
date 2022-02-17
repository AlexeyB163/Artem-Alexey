//
//  NewsTableViewCell.swift
//  Artem-Alexey
//
//  Created by User on 11.02.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsLabel: UILabel!

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
