//
//  AddEmailView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12){
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Use the email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            TextField("Email",text: $email)
                .textInputAutocapitalization(.none)
                .modifier(TextFieldModifier())
            
            NavigationLink {
                CreateUsernameView()
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
