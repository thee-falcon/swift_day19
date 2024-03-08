//
//  ViewController.swift
//  Project2
//
//  Created by Omar Makran on 8/3/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "morocco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        askQuestion()
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func    askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)

        button1.setImage(UIImage(named: countries[0]),
                         for: .normal)
        button2.setImage(UIImage(named: countries[1]),
                         for: .normal)
        button3.setImage(UIImage(named: countries[2]),
                         for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }

    @IBAction func buttonTaped(_ sender: UIButton) {
    }
}

