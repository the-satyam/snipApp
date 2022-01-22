//
//  LoginVC.swift
//  FirstApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var userTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    

    override func viewDidLoad() {
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        let user = userTF.text ?? ""
        let password = passwordTF.text ?? ""
        if(user.count > 0 && user == "Satyam") && (password.count > 0 && password == "1234"){
            
            //save user detail
            saveCredential(name: user, password: password)
            let objLogSuccessVC = self.storyboard?.instantiateViewController(withIdentifier: "LogSuccessVC") as? LogSuccessVC
            if let objLogSuccessVC = objLogSuccessVC {
               self.navigationController?.pushViewController(objLogSuccessVC, animated: true)
                
            }
            
        }
        else{
            print("CheckCredential")
            showAlert(message:MESSAGE.WRONG_CREDENTIAL.rawValue)
        }
        
    }
    func saveCredential(name:String , password:String){
        let objUserDefault = UserDefaults.standard
        objUserDefault.set(name, forKey:"username")
        objUserDefault.set(password, forKey:"password")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
