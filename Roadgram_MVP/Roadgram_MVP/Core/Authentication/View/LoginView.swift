//
//  LoginView.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import SwiftUI
import Firebase
struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var navigateToNextPage = false
    @State private var UserIsLoggedIn = false
    var body: some View {
        NavigationStack{
            VStack(spacing:10){
                Image(systemName: "lock.shield.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.black)
                    .padding(.bottom,24)
                //logo image
                Image("logo5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 50)
                
                // text fields
                VStack{
                    //email field
                    TextField("Email",text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(TextFieldModifier())
                    
                    // password field
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal,24)
                }
                //forgot password button
                Button {
                    print("Forgot password")
                }label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,12)
                    
                }
                
                // login button
                Button {
                    print("Login")
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    
                }
                .padding(.vertical)
                // divider for signup
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40 , height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40 , height: 0.5)
                    
                }
                .foregroundColor(.gray)
                
            }
            .padding(.top,8)
            //Spacer()
            //Divider()
            
            
            NavigationLink{
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                HStack(spacing: 3){
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        
                }
                .font(.subheadline)
            }
            .padding(.top,40)
        }
        
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
