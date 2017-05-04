//
//  Post.swift
//  MyHood
//
//  Created by newmac on 4/19/17.
//  Copyright © 2017 Sachin. All rights reserved.
//

import Foundation

class Post {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    init(imagePath: String, title:String, postDesc: String) {
        
        self._imagePath = imagePath
        self._title = title
        self._postDesc = postDesc
    }
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
}
