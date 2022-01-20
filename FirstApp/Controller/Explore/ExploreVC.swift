//
//  ExploreVC.swift
//  FirstApp
//
//  Created by cloud on 20/01/22.
//

import UIKit

class ExploreVC: UIViewController {

    @IBOutlet weak var objExploreView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    



}
extension ExploreVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objExploreCell = tableView.dequeueReusableCell(withIdentifier: "ExploreCell") as? ExploreCell
    return objExploreCell!
    }
    
}
extension ExploreVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
