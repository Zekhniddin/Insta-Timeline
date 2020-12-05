//
//  Post.swift
//  Insta Timeline
//
//  Created by Зехниддин on 12/5/20.
//

import Foundation

class Post {
    var profileImage: String? = ""
    var fullName: String? = ""
    var time: String? = ""
    var postImage1: String? = ""
    var postImage2: String? = ""
    var postImage3: String? = ""
    var likes: Int? = 0
    var postText: String? = ""
    
    init(profileImage: String, fullName: String, time: String, postImage1: String,postImage2: String, postImage3: String, likes: Int, postText: String) {
        self.profileImage = profileImage
        self.fullName = fullName
        self.time = time
        self.postImage1 = postImage1
        self.postImage2 = postImage2
        self.postImage3 = postImage3
        self.likes = likes
        self.postText = postText
    }
}
