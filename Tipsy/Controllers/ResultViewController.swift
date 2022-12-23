//
//  ResultViewController.swift
//  Tipsy
//
//  Created by mesut on 10.10.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var calculatedLabelText : String?
    var settingsText : String?
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        totalLabel.text = calculatedLabelText
        settingsLabel.text = settingsText
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
