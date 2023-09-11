//
//  ViewController.swift
//  DiceGame
//
//  Created by chris on 2023/09/11.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [ #imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize
        firstImageView.image = diceArray[0]
        secondImageView.image = diceArray[0]
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        // Change the image of the first image view to random
        firstImageView.image = diceArray.randomElement()
        
        // Change the image of the second image view to random
        secondImageView.image = diceArray.randomElement()
    }
    
}

