//
//  ViewController.swift
//  Calculator
//
//  Created by Danil Chemaev on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen: Double = 0
    @IBOutlet weak var result: UILabel!
    
    //Работа с числами
    @IBAction func digits(_ sender: UIButton) {
        result.text = result.text! + String(sender.tag)
        numberFromScreen = Double(result.text!)!
    }
    
    // Работа с функциональными кнопками
    @IBAction func buttons(_ sender: UIButton) {
            if result.text != ""{
            if sender.tag == 10{ // AC
                result.text = ""
            }
            
            
            if sender.tag == 11{ // Деление
                
            }
            
            if sender.tag == 12{ // Умножение
                
            }
            if sender.tag == 13{ // Вычитание
                
            }
            if sender.tag == 14{ // Сложение
                
            }
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

