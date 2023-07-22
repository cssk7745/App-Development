//
//  ContentViewModel.swift
//  Roadgram_MVP
//
//  Created by Sanjay Krishna on 15/07/23.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseStorage
import Combine

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        
    }
    func setupSubscribers() {
        service.$userSession.sink {[weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
    
    
}
