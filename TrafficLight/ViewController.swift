//
//  ViewController.swift
//  TrafficLight
//
//  Created by John Heifetz on 24/07/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import UIKit

enum Lights {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    private let alphaParameterIsOn = 1.0
    private let alphaParameterIsOff = 0.3
    private var currentLight = Lights.red
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = CGFloat(alphaParameterIsOn)
            yellowLight.alpha = CGFloat(alphaParameterIsOff)
            greenLight.alpha = CGFloat(alphaParameterIsOff)
            currentLight = .yellow
        case .yellow:
            redLight.alpha = CGFloat(alphaParameterIsOff)
            yellowLight.alpha = CGFloat(alphaParameterIsOn)
            greenLight.alpha = CGFloat(alphaParameterIsOff)
            currentLight = .green
        case .green:
            redLight.alpha = CGFloat(alphaParameterIsOff)
            yellowLight.alpha = CGFloat(alphaParameterIsOff)
            greenLight.alpha = CGFloat(alphaParameterIsOn)
            currentLight = .red
        }
    }
}
