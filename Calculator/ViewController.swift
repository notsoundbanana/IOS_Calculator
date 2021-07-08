//
//  ViewController.swift
//  Calculator
//
//  Created by Danil Chemaev on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen: Double = 0
    var firstNum: Double = 0
    var secondNum: Double = 0
    var mathSign: Bool = false
    var equalSign: Bool = false
    var sign: Int = 0
    @IBOutlet weak var result: UILabel!
    
    //Работа с числами
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true{
            result.text = String(sender.tag)
            mathSign = false
        }
        else if equalSign == true{
            
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(result.text!)!
        print(numberFromScreen)
    }
    
    // Работа с функциональными кнопками
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 15 && sender.tag != 10{
            firstNum = Double(result.text!)!
            
            if sender.tag == 11{ // Деление
                result.text = "/";
            }
            else if sender.tag == 12{ // Умножение
                result.text = "X";
            }
            else if sender.tag == 13{ // Вычитание
                result.text = "-";
            }
            else if sender.tag == 14{ // Сложение
                result.text = "+";
            }
            
            sign = sender.tag
            
            print(sign, "sign")
            mathSign = true
            firstNum = numberFromScreen
        }
        
        else if sender.tag == 10{
            result.text = ""
            firstNum = 0
        }
        else if sender.tag == 15{
            equalSign = true
            secondNum = numberFromScreen
            
            let mathSigns = [11: "/",
                              12: "*",
                              13: "-",
                              14: "+"]
            
            if mathSigns[sign]! == "+"{
                let res: Double = firstNum + secondNum
                result.text = String(res)
            }
            else if mathSigns[sign]! == "-"{
                let res: Double = firstNum - secondNum
                result.text = String(res)
            }
            else if mathSigns[sign]! == "/"{
                let res: Double = firstNum / secondNum
                result.text = String(res)
            }
            else if mathSigns[sign]! == "*"{
                let res: Double = firstNum * secondNum
                result.text = String(res)
            }
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

