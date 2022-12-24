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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for button in buttons {
            button.layer.cornerRadius = 8
        }


    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func rulesButtonTapped(_ sender: UIButton) {
    }
}
