//
//  UserService.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation

public class UserService {
    private final let repository : UserRepository = UserRepository()
    
    public func addUser(_ newUser : User) -> Bool {
        return repository.create(newUser)
    }
    
    public func getUser(_ email : String) -> Bool {
        return repository.read(email)
    }
}
