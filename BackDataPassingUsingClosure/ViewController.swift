//
//  ViewController.swift
//  BackDataPassingUsingClosure
//
//  Created by Mac on 26/02/24.
//

import UIKit

class ViewController: UIViewController {

    var secondViewController : SecondViewController = SecondViewController()
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    @IBAction func forwardBtn(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        secondViewController.backDataPassClosure = {firstName,secondName,lastName in
            self.firstNameLabel.text = firstName
            self.secondNameLabel.text = secondName
            self.lastNameLabel.text = lastName
        }
    }
    
}

