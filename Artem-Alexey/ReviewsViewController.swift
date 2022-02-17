//
//  ReviewsViewController.swift
//  Artem-Alexey
//
//  Created by User on 16.02.2022.
//

import UIKit

protocol ReviewDelegate {
    func setReview(from review:UITextView)
}

class ReviewsViewController: UIViewController {

    var reviews:[String] = []
    
    @IBOutlet weak var reviewTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        reviewTableView.rowHeight = 80
        reviewTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reviewTableView.dataSource = self
        reviewTableView.delegate = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let writeVC = segue.destination as? WriteReviewViewController {
            writeVC.delegate = self
        }
        
        else if segue.identifier == "goToDescription" {
            let reviewDescVC = segue.destination as! ReviewDescriptionViewController
            guard let indexPath = reviewTableView.indexPathForSelectedRow else {return}
            reviewDescVC.descriptionReview = reviews[indexPath.row]
        }
    }
}

extension ReviewsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        reviews.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "review", for: indexPath)
        var content = cell.defaultContentConfiguration()

        content.text = reviews[indexPath.row]

        cell.contentConfiguration = content
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let review = reviews[indexPath.row]
        performSegue(withIdentifier: "goToDescription", sender: review)
        
    }
}

extension ReviewsViewController: ReviewDelegate {
    func setReview(from text: UITextView) {
        reviews.append(text.text ?? "")
    }
}
