//
//  ViewController.swift
//  Sprint3 Homework
//
//  Created by Dmitriy Menshikov on 13.11.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    private var counterValue: Int = 0 {
        didSet {
            counterLabel.text = "Значение счетчика: \(counterValue)"
        }
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var incButton: UIButton!
    
    @IBAction func incButtonDidTap(_ sender: Any) {
        print("Нажатие +")
        counterValue += 1
    }
    
    @IBOutlet weak var decButton: UIButton!
    
    @IBAction func decButtonDidTap(_ sender: Any) {
        print("Нажатие -")
        if counterValue != 0 {
            counterValue -= 1
        } else {
            // тут написать вывод текста
        }
    }
    
    @IBOutlet weak var renewButton: UIButton!
    
    @IBAction func renewButtonDidTap(_ sender: Any) {
        print("Нажатие сброс")
        counterValue = 0
    }
    
    
}

