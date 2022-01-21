//
//  HomeVM.swift
//  FirstApp
//
//  Created by cloud on 20/01/22.
//

import UIKit

class HomeVM {
    var objPostList : [PostModel?] = []
    // trying to fetch data from server
    func getPost(completionHandler : @escaping ([PostModel])-> ()){
        //try to fetch the data from the server

        let objNetworking = Networking()

        //call the getpost method

        objNetworking.getPostFrom(serverUrl: Server.kPost.rawValue) { objmodel in

            

            //set data received from server

            self.objPostList = objmodel
            completionHandler(objmodel)

            }
    }
    
    func getPostFor(row:Int) -> PostModel? {
        if (objPostList.count > 0){
        return objPostList[row]
        }
            return nil
    }
    func getTotalPOst() -> Int{
        return objPostList.count
    }
    
}

