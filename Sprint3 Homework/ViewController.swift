//
//  ViewController.swift
//  Sprint3 Homework
//
//  Created by Dmitriy Menshikov on 13.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var counterLabel: UILabel!
    
    @IBOutlet private weak var incrementButton: UIButton!
    
    @IBOutlet private weak var decrementButton: UIButton!
    
    @IBOutlet private weak var renewButton: UIButton!
    
    @IBOutlet private weak var logTextView: UITextView!
    
    
    private var counterValue: Int = 0 {
        didSet {
            counterLabel.text = "Значение счетчика: \(counterValue)"
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        logTextViewSetup()
    }
    
    private func logTextViewSetup () {
        logTextView.isEditable = false
        logTextView.isSelectable = false
        logTextView.text = "История изменений:\n"
    }
    
    
    private func printToLogTextView (_ message: String) {
        logTextView.text.append(Date().dateTimeString)
        logTextView.text.append(message)
    }
    
    
    @IBAction private func renewButtonDidTap(_ sender: Any) {
        print("Нажатие сброс")
        counterValue = 0
        printToLogTextView("Значение сброшено\n")
    }
    
    @IBAction private func decrementButtonDidTap(_ sender: Any) {
        print("Нажатие -")
        if counterValue != 0 {
            counterValue -= 1
            printToLogTextView("Значение изменено на -1\n")
        } else {
            printToLogTextView("Попытка уменьшения значения счетчика ниже 0\n")
        }
    }
    
    @IBAction private func incrementButtonDidTap(_ sender: Any) {
        print("Нажатие +")
        counterValue += 1
        printToLogTextView("Значение изменено на +1\n")
    }
}

