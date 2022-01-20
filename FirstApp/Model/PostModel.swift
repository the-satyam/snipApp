//
//  PostModel.swift
//  FirstApp
//
//  Created by cloud on 19/01/22.
//

import UIKit

struct PostModel: Decodable {

    var userId  : Int?

    var id      : Int?

    var title   : String?

    var body    : String?

}
enum Server : String {

    case kPost = "https://jsonplaceholder.typicode.com/posts"

}
