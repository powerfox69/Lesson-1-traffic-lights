//
//  ViewController.swift
//  Lesson 1 traffic lights
//
//  Created by Gleb on 10/13/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var toggleTextButton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        redColorView.alpha = 0.3
        redColorView.layer.cornerRadius = 88
        yellowColorView.alpha = 0.3
        yellowColorView.layer.cornerRadius = 88
        greenColorView.alpha = 0.3
        greenColorView.layer.cornerRadius = 88
        toggleTextButton.layer.cornerRadius = 10
    }

    @IBAction func toggelTextButtonPressed() {
        if redColorView.alpha < 1 && greenColorView.alpha < 1 && yellowColorView.alpha < 1 {
            redColorView.alpha = 1
        } else if redColorView.alpha == 1 {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
        } else if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
        } else if greenColorView.alpha == 1 {
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
        }
          
        
            toggleTextButton.setTitle("Next", for: .normal)
        }

}



