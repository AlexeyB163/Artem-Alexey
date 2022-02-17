//
//  reviewDescription.swift
//  Artem-Alexey
//
//  Created by User on 16.02.2022.
//

import Foundation
import UIKit

class ReviewDescriptionViewController: UIViewController {
    
    var descriptionReview:String = ""
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = descriptionReview
    }
    
}
