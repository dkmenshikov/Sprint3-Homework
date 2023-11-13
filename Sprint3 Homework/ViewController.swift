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
        printToLog("Значение изменено на +1\n")
    }
    
    @IBOutlet weak var decButton: UIButton!
    
    @IBAction func decButtonDidTap(_ sender: Any) {
        print("Нажатие -")
        if counterValue != 0 {
            counterValue -= 1
            printToLog("Значение изменено на -1\n")
        } else {
            // тут написать вывод текста
            printToLog("Попытка уменьшения значения счетчика ниже 0\n")
        }
    }
    
    @IBOutlet weak var renewButton: UIButton!
    
    @IBAction func renewButtonDidTap(_ sender: Any) {
        print("Нажатие сброс")
        counterValue = 0
        printToLog("Значение сброшено\n")
    }
    
    @IBOutlet weak var changesLog: UITextView!
    
    private func printToLog (_ message: String) {
        changesLog.text.append(Date().dateTimeString)
        changesLog.text.append(message)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        changesLog.isEditable = false
    }
    
}

