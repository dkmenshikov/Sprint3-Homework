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
    
    private var counterValue: Int = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var incButton: UIButton!
    
    @IBAction func incButtonDidTap(_ sender: Any) {
        print("Нажатие +")
        counterValue += 1
        counterLabel.text = "Значение счетчика: \(counterValue)"
    }
    

}

