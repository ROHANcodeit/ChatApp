//
//  WelcomeViewController.swift
//  ChatApp
//
//  Created by Rohan Tyagi on 06/09/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex=0.0
        let titleText = K.appName
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.1*charIndex,
                    repeats: false){(timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex+=1
        }
       
    }
    

}
