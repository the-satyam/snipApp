//
//  HomeVC.swift
//  FirstApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    
    //Data source array for tableview

       var objPostList : [PostModel?] = []

       

       //Tableview


    @IBOutlet weak var objTableView: UITableView!
    

       

       override func viewDidLoad() {

           super.viewDidLoad()

           

           //try to fetch the data from the server

           let objNetworking = Networking()

           //call the getpost method

           objNetworking.getPostFrom(serverUrl: Server.kPost.rawValue) { objmodel in

               

               //set data received from server

               self.objPostList = objmodel

               

               //Refresh the tableview

               DispatchQueue.main.async {

                   self.objTableView.reloadData()

               }

               print("dkdkd")

           }

       }

}



extension HomeVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
        return objCell!
    }
    
}

