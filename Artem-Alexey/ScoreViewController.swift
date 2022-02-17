//
//  ScoreViewController.swift
//  Artem-Alexey
//
//  Created by User on 15.02.2022.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var scoreSlider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var delegate:ScoreFilmDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(format: "%0.f", scoreSlider.value)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        scoreLabel.text = String(format: "%0.f", scoreSlider.value)
    }
    
    @IBAction func getScoreButton() {
        delegate.setScoreFilm(from: scoreSlider)
        dismiss(animated: true)
    }
}

