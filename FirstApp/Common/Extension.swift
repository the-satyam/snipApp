//
//  Extension.swift
//  FirstApp
//
//  Created by cloud on 21/01/22.
//

import UIKit

extension UIViewController {
    func showAlert(message:String){
        let alertControll = UIAlertController(title: "SNIP", message: message, preferredStyle: UIAlertController.Style.alert)
        let alertOkAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default , handler: nil)
        alertControll.addAction(alertOkAction)
        self.navigationController?.present(alertControll, animated : true,completion:nil)
    }
}
