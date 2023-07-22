//
//  UserStatView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//
import SwiftUI

struct UserStatView: View {
    let value:Int
    let title:String
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 12, title: "Posts")
    }
}
