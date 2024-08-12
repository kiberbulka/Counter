//
//  ViewController.swift
//  Counter
//
//  Created by Olya on 11.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    
    
   
    @IBAction func zeroButton(_ sender: Any) {
        labelValue.text = "0"
        historyTextView.text .append("\n\(currentDate()): Значение сброшено")
    }
    func currentDate()->String{
        let dateNow = Date()
        let dateFormat=DateFormatter()
        dateFormat.dateStyle = .short
        dateFormat.timeStyle = .short
        let currentDate = dateFormat.string(from: dateNow)
        return currentDate
    }
    
    @IBAction func plusButton(_ sender: Any) {
        var counter = Int(labelValue.text!)!
        counter+=1
        labelValue.text = String(counter)
        historyTextView.text .append("\n\(currentDate()): Значение изменено на +1")
    }
    
    @IBAction func minusButton(_ sender: Any) {
        var counter = Int(labelValue.text!)!
        if counter > 0 {
            counter-=1
            historyTextView.text .append("\n\(currentDate()): Значение изменено на -1")
        } else {
            counter=0
            historyTextView.text .append("\n\(currentDate()): Попытка уменьшения счетчика меньше нуля")
            
        }
        labelValue.text = String(counter)
       
    }
}

