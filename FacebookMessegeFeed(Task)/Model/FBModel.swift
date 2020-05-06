//
//  FBModel.swift
//  FacebookMessegeFeed(Task)
//
//  Created by mehtab alam on 06/05/2020.
//  Copyright © 2020 taj hassan. All rights reserved.
//

import UIKit

class newModel: Codable {
    
    let feed:[FBModel]
    
    init(feed:[FBModel])
    {
        self.feed = feed
    }
}

class FBModel: Codable
{
    let id: Int
    let name: String
    let image: String?
    let status: String
    let profilePic: String
    let timeStamp: String
    let url: String?
    
    init(id:Int,name:String,image:String,status:String,profilePic:String,timeStamp:String,url:String) {
        self.id = id
        self.name = name
        self.image = image
        self.status = status
        self.profilePic = profilePic
        self.timeStamp = timeStamp
        self.url = url
    }
}
