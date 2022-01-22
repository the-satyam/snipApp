//
//  ProfileVC.swift
//  FirstApp
//
//  Created by cloud on 21/01/22.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var userid: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    //obj of utility
        let objUtil = Utility()
        let uname = objUtil.fetchUser()
        let pass = objUtil.fetchPassword()
        
        name.text = "Name - \(uname ?? "")"
        email.text = "Email - \(uname ?? "")@snip.in"
        password.text = "Password - \(pass ?? "") "
        userid.text = "UserID - 123\(uname ?? "")"
        
    }
    
    
    @IBAction func logout(_ sender: Any) {
        
        delCredential()
        let objLoginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        if let objLoginVC = objLoginVC {
           self.navigationController?.pushViewController(objLoginVC, animated: true)
            
        }
        
    func delCredential(){
            let objUserDefault = UserDefaults.standard
            objUserDefault.set(nil, forKey:"username")
            objUserDefault.set(nil, forKey:"password")
            
        }
    }
    
}


