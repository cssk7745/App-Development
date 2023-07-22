//
//  SignUpViewModel.swift
//  CareTrack
//
//  Created by Prakhar Parakh on 16/04/23.
//

import Foundation
import Firebase
import FirebaseAuth
final class SignUpViewModel: ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
       @Published var currentUser: User?
    
    func registerUser(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password)
    }
}
