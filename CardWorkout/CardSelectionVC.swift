//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Mustafa Adnan Tatlıcı on 22.12.2022.
//

import UIKit

class CardSelectionVC: UIViewController {

   
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var timer: Timer!
    var cards: [UIImage] = card.allValues
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startTimer()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }

        
        
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
}
