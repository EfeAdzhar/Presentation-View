//
//  User.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation

public class User {
    private let id : String
    private let name : String
    private let email : String
    private let password : String
    
    init(id : String, name : String, email: String, password: String) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }
}

extension User {
   public func getid() -> String {
       return self.id
    }
    
    public func getName() -> String {
        return self.name
     }
    
    public func getEmail() -> String {
        return self.email
     }
     
    public func getPassword() -> String {
        return self.password
     }
}
