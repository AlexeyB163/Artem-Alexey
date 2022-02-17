//
//  CoverCollectionViewCell.swift
//  Artem-Alexey
//
//  Created by User on 14.02.2022.
//

import UIKit

class CoverCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 12
    }

    func setCell(cover: String, title: String) {
        coverImage.image = UIImage(named: cover)
        titleLabel.text = title
    }
}
