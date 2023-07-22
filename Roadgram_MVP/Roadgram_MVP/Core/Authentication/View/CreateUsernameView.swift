//
//  CreateUsernameView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12){
            Text("Create your username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Create the username ")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            TextField("Username",text: $username)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
                    
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
                    .foregroundColor(.white)
                
            }
            .padding(.vertical)
            Spacer()
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }

    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}

