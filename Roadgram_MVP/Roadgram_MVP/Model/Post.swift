//
//  Post.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import Foundation

struct Post: Identifiable,Hashable,Codable {
    let id : String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
    
}


extension Post {
    static var MOCK_POSTS : [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test caption", likes: 23, imageUrl: "road1", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test caption-2", likes: 231, imageUrl: "road2", timestamp: Date(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test caption-3", likes: 232, imageUrl: "road3", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test caption-4", likes: 233, imageUrl: "road4", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Test caption-5", likes: 234, imageUrl: "road5", timestamp: Date(), user: User.MOCK_USERS[3]),
        
        
    
    ]
}
