//
//  CinemasViewController.swift
//  Artem-Alexey
//
//  Created by Артем ШАЛИН on 14.02.2022.
//

import UIKit

class CinemasViewController: UIViewController {
    
    @IBOutlet var cinemaCollection: [UILabel]!
    @IBOutlet var cinemaAdressCollection: [UILabel]!
    
    @IBOutlet var firstCinemaShedule: [UIButton]!
    @IBOutlet var secondCinemaShedule: [UIButton]!
    @IBOutlet var thirdCinemaShedule: [UIButton]!
    
    let cinemas = Cinema.getCinemas()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCinemaLabels()
    }
    
    @IBAction func timeSelected(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    func updateCinemaLabels() {
        
        for (cinema, cinemaLabel) in zip(cinemas, cinemaCollection) {
            cinemaLabel.text = cinema.title
        }
        
        for (cinema, cinemaAdressLabel) in zip(cinemas, cinemaAdressCollection) {
            cinemaAdressLabel.text = cinema.adress
        }
        
        for (cinema, cinemaSheduleButton) in zip(cinemas, [firstCinemaShedule,
                                                            secondCinemaShedule,
                                                            thirdCinemaShedule]) {
            guard let sheduleButton = cinemaSheduleButton else { continue }
            setTime(for: sheduleButton, from: cinema.shedule)
        }
    }
    
    func setTime(for cinemaSheduleButtons:[UIButton], from shedule:[String]) {
        for (sheduleTime, sheduleButton) in zip(shedule, cinemaSheduleButtons) {
            sheduleButton.setTitle(sheduleTime, for: .normal)
        }
    }
}
