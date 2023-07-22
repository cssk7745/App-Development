//
//  AuthService.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import Foundation
import FirebaseAuth
import Firebase

class AuthService: ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
      @Published var isAuthenticating = false
      @Published var error: Error?
      @Published var user: User?
      
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email : String, password: String) async throws {
        
        
        
        
    }
    
    func createUser( email : String, password: String, username: String) async throws {
        
    }
    func loadUserData() async throws {
        
    }
    
    func signOut()  {
        
    }
    
    
    
    
}

