//
//  FutureValueViewController.swift
//  Financial App
//
//  Created by Bohlale Manage on 2023/04/25.
//

import UIKit

class FutureValueViewController: UIViewController {
    
   
   
    @IBOutlet var interestTextField: UITextField!
    
    @IBOutlet var periodTextField: UITextField!
    
    
    
    @IBOutlet var presentTextfield: UITextField!
    @IBOutlet var answerTextField: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if let interest = Double(interestTextField.text!),
           let period = Double(periodTextField.text!),
           let present = Double(presentTextfield.text!) {
            let result = present * (pow((1 + interest ), period))
            answerTextField.text = String(result)
            
        }
            
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Future Value"

        // Do any additional setup after loading the view.
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
