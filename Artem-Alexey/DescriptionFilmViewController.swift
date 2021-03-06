//
//  DescriptionFilmViewController.swift
//  Artem-Alexey
//
//  Created by User on 13.02.2022.
//

import UIKit

protocol ScoreFilmDelegate {
    func setScoreFilm(from slider: UISlider)
}

class DescriptionFilmViewController: UIViewController {

    var data:Film!
    var score:String = "-"
    
    @IBOutlet weak var coverFilmImage: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = data.title
        
        coverFilmImage.image = UIImage(named: data.cover)
        scoreLabel.text = score
        setDurationFilm(duration: data.duration)
        genreLabel.text = data.genre.rawValue
        descriptionLabel.text = data.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreVC = segue.destination as? ScoreViewController else { return }
        scoreVC.delegate = self
    }
    
    private func setDurationFilm(duration value: Int) {
        var hours:Int = 0
        var minute:Int = 0
        hours = value / 60
        minute = value - (hours * 60)
        durationLabel.text = "\(hours) ч. \(minute) мин."
    }
    
    @IBAction func scheduleButton() {
        
    }
    
    @IBAction func scoreButton() {
    }
    
    @IBAction func reviewsButton() {
    }
}

extension DescriptionFilmViewController: ScoreFilmDelegate {
    func setScoreFilm(from slider: UISlider) {
        scoreLabel.text = String(format: "%0.f", slider.value)
    }
}
