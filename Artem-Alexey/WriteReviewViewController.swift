//
//  WriteReviewViewController.swift
//  Artem-Alexey
//
//  Created by User on 16.02.2022.
//

import UIKit

class WriteReviewViewController: UIViewController {

    @IBOutlet weak var reviewTextView: UITextView!
   
    var delegate:ReviewDelegate!
    
    @IBAction func saveReviewButton() {
       delegate.setReview(from: reviewTextView)
        self.navigationController?.popViewController(animated: true)
    }
}
