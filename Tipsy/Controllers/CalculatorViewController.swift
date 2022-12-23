//
//  ViewController.swift
//  Tipsy


import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var discount = 0.1
    var chosenSplitValue = 2.0
    var splitedTotalBill = "0.0"
    var settingText = ""
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
      
        if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            discount = 0.0
           
        } else if sender.currentTitle == "10%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            discount = 0.1
         
        } else if sender.currentTitle == "20%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            discount = 0.2
        }
        
    
        }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        chosenSplitValue = sender.value
    
        splitNumberLabel.text = String(format: "%.0f", chosenSplitValue)
       
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let totalBill = (Double((billTextField?.text)!) ?? 0)
        
        splitedTotalBill = String(format: "%.2f", ((totalBill + totalBill*discount) / chosenSplitValue))
        
        
    performSegue(withIdentifier: "readyToGo", sender: self)
    
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "readyToGo" {
           let destinationVC = segue.destination as! ResultViewController
            settingText = "Split between \(String(format: "%.0f",chosenSplitValue)) people, with \(String(format: "%.0f",discount*100))% tip."
            
            destinationVC.calculatedLabelText = splitedTotalBill
            destinationVC.settingsText = settingText
        }
        
    
    }
}


