//
//  ViewController.swift
//  FirstApp
//
//  Created by cloud on 17/01/22.
//

import UIKit

class SnipVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did laod log")
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("view did appear log")
        // Do any additional setup after loading the view.
    }
    


    @IBAction func login(_ sender: Any) {
    
    // navigate to signin page
            let objSign = self.storyboard?.instantiateViewController(identifier:"SignupVC") as? SignupVC
            if let objSign = objSign{self.navigationController?.pushViewController(objSign, animated: true)}
    
    }
    
    
    @IBAction func signip(_ sender: Any) {
        //navigate to login page
        let objLog = self.storyboard?.instantiateViewController(identifier: "LoginVC") as? LoginVC
        if let objLog = objLog{self.navigationController?.pushViewController(objLog, animated: true)}
    
    }
    
}
