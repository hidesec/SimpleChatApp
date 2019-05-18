//
//  Message.swift
//  FirebaseChat
//
//  Created by sarkom3 on 08/05/19.
//  Copyright © 2019 sarkom3. All rights reserved.
//

import UIKit
import FirebaseAuth

class Message: NSObject {
    var fromId:String?
    var text:String?
    var timestamp:NSNumber?
    var toId:String?
    var imageUrl:String?
    var videoUrl:String?
    var imageWidth:NSNumber?
    var imageHeight:NSNumber?
    
    init(dictionary: [String:Any]){
        self.fromId = dictionary["fromId"] as? String
        self.text = dictionary["text"] as? String
        self.timestamp = dictionary["timestamp"] as? NSNumber
        self.toId = dictionary["toId"] as? String
        self.imageUrl = dictionary["imageUrl"] as? String
        self.videoUrl = dictionary["videoUrl"] as? String
        self.imageWidth = dictionary["imageWidth"] as? NSNumber
        self.imageHeight = dictionary["imageHeight"] as? NSNumber
    }
    
    func chatPartnerId() -> String? {
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
    }
}
