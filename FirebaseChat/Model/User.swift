//
//  User.swift
//  FirebaseChat
//
//  Created by sarkom3 on 07/05/19.
//  Copyright © 2019 sarkom3. All rights reserved.
//

import UIKit

class User: NSObject {
    var id:String?
    var name:String?
    var email:String?
    var profileImageUrl:String?
    
    init(dictionary: [String : AnyObject]){
        self.id = dictionary["id"] as? String
        self.name = dictionary["name"] as? String
        self.email = dictionary["email"] as? String
        self.profileImageUrl = dictionary["profileImageUrl"] as? String
    }
}
