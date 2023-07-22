//
//  SearchView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = " "
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:12){
                    ForEach(User.MOCK_USERS) {
                        user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageurl ?? "")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40,height: 40)
                                .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    
                                    if let fullname = user.fullname{
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                Spacer()
                                
                                
                                
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt: "Search for users")
            }
            .navigationDestination(for: User.self, destination: {
                user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
