//
//  AuthService.swift
//  CareTrack
//
//  Created by Sanjay Krishna on 15/07/23.
//

import Foundation
import FirebaseAuth
class AuthService: ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
      @Published var isAuthenticating = false
      @Published var error: Error?
      @Published var user: User?
      
    static let shared = AuthService()
    
    
    
    func login(withEmail email : String, password: String) async throws {
        
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
             if let error = error {
               print("DEBUG: Failed to login: \(error.localizedDescription)")
               return
             }
             self.userSession = result?.user
             
           }
        
    }
    
    func createUser( email : String, password: String, username: String) async throws {
        
    }
    func loadUserData() async throws {
        
    }
    
    func signOut()  {
        
    }
    
    
    
    
}
