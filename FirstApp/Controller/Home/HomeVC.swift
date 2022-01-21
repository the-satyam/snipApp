//
//  HomeVC.swift
//  FirstApp
//
//  Created by cloud on 18/01/22.
//

import UIKit

class HomeVC: UIViewController , ShareDataBackward{
    
    
    
    //Data source array for tableview
    

       var objPostList : [PostModel?] = []

       

       //Tableview


    @IBOutlet weak var objTableView: UITableView!
    
    var viewModel = HomeVM()
       

       override func viewDidLoad() {

           super.viewDidLoad()

           
           viewModel.getPost {  objmodel  in
                             self.objPostList = objmodel
               
               DispatchQueue.main.async {

                   self.objTableView.reloadData()

               }

               print("Success")

           }
       }
    
    func sendBackdata(data: String?) {
        print(data ?? "")
    }
    
    
}





extension HomeVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getTotalPOst()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objCell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell
        let post = indexPath.row
        objCell!.setData(row:post,viewModel:viewModel)
        return objCell!
    }
    
}

extension HomeVC : UITableViewDelegate {
    func tableView(_ : UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let objDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC
        let post = objPostList[indexPath.row]
        if let objDetailVC = objDetailVC {
            objDetailVC.post = post
            objDetailVC.delgate = self
            self.navigationController?.pushViewController(objDetailVC, animated: true)
        }
        
    }
    
}

