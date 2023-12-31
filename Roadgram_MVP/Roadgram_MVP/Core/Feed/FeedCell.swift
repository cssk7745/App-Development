//
//  FeedCell.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct FeedCell: View {
    
    let post:Post
    var body: some View {
        VStack{
            // image + username
            HStack{
                if let user = post.user {
                    Image(user.profileImageurl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40,height: 40)
                        .clipShape(Circle())
                    
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                }
                Spacer()
            }
            .padding(.leading,8)
            
            // post image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            //action buttons
            HStack{
                Button{
                    print("Like post ")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        
                }
                
                Button{
                    print("comment ")
                } label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                        
                }
                Button{
                    print("share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                      
                }
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundColor(.black)
            //likes label
            
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
            // caption label
            
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            Text("7h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundColor(.gray)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[0])
    }
}
