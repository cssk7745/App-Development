//
//  User.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import Foundation


struct User: Identifiable,Hashable,Codable {
    let id:String
    var username:String
    var profileImageurl:String?
    var fullname:String?
    var bio : String?
    let email : String
    
    
}
extension User {
    static var  MOCK_USERS:[User] = [
        .init(id: NSUUID().uuidString, username:"cssk777", profileImageurl: "spidy", fullname: "Sanjay Krishna", bio: "Always Cheerful", email: "sanjay@gmail.com"),
        .init(id: NSUUID().uuidString, username:"hulkk", profileImageurl: "hulk", fullname: "The Hulk", bio: "Strongest of all ", email: "hulk@gmail.com"),
        .init(id: NSUUID().uuidString, username:"thor", profileImageurl: "thor", fullname: "Thor Ragnarok", bio: "Meme Material", email: "thor@gmail.com"),
        .init(id: NSUUID().uuidString, username:"ironman", profileImageurl: "ironman", fullname: "Robert Downey", bio: "My days at Marvel are over", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username:"super_man", profileImageurl: "superman", fullname: "Superman ", bio: "my name's enough!", email: "superman@gmail.com"),
        
        
    ]
}

