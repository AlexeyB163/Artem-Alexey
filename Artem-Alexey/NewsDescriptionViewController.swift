//
//  NewsDescriptionViewController.swift
//  Artem-Alexey
//
//  Created by User on 16.02.2022.
//

import UIKit

class NewsDescriptionViewController: UIViewController {

    var data:String!
    var cover:String!
    
    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var newsTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coverImage.image = UIImage(named: cover)
        newsTitle.text = data
    }
}
