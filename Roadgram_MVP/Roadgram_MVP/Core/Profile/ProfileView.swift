//
//  ProfileView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user:User
  
    
    private let gridItems :[GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
    
    
    ]
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var posts :[Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username  })
    }
    var body: some View {
      
            ScrollView{
                // header
                ProfileHeaderView(user: user)
                
                
                // post grid view
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
       
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[1])
    }
}
