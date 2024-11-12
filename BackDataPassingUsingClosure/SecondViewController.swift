//
//  SecondViewController.swift
//  BackDataPassingUsingClosure
//
//  Created by Mac on 26/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var backDataPassClosure : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    @IBAction func btnBack(_ sender: Any) {
        let extractedfirstName = self.firstNameTextField.text
        let extractedSecondName = self.secondNameTextField.text
        let extractedLastName = self.lastNameTextField.text
        
        guard let backDataPassClosure1 = backDataPassClosure else { return  }
        backDataPassClosure1(extractedfirstName!,extractedSecondName!,extractedLastName!)
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
