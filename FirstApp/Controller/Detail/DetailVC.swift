//
//  DetailVC.swift
//  FirstApp
//
//  Created by cloud on 19/01/22.
//

import UIKit
protocol ShareDataBackward{
    func sendBackdata(data : String?)
}
class DetailVC: UIViewController {
    
    var post:PostModel?
    var delgate : ShareDataBackward?
    @IBOutlet weak var userId   :      UILabel!
    @IBOutlet weak var postId   :      UILabel!
    @IBOutlet weak var titleLab :    UILabel!
    
    @IBOutlet weak var body: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userId.text = "UserID -  \(post?.userId ?? 0 )"
        postId.text = "PostId- \(post?.id ?? 0 )"
        titleLab.text = "Title- \(post?.title ?? "" )"
        body.text = "Body - \(post?.body ?? "" )"
        
    }
    
    @IBAction func sendData(_ sender: Any) {
        delgate?.sendBackdata(data: "Backward Data Printing") 
    }
    


}
