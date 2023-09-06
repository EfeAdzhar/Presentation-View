//
//  UserRepository.swift
//  IgorTestApp
//
//  Created by Efe on 11.07.2023.
//

import Foundation

class UserRepository {
    private var userDao = UserDao.shared
    
    public func create(_ newUser : User) -> Bool {
        guard self.checkUserValidity(newUser) else { return false }
        if(!(userDao.getUserDB().contains(
            where: { user in
                user.getEmail() == newUser.getEmail()
        } )
        )) {
            userDao.appendUser(newUser)
            return true
        }
        return false
    }
    
    public func read(_ email : String) -> Bool {
        return userDao.getUserDB().contains { user in
          user.getEmail() == email
                return true
            }
        return false
        }
    
    private func checkUserValidity(_ newUser : User) -> Bool {
        if(newUser.getid().isEmpty
           || newUser.getEmail().isEmpty
           || !newUser.getEmail().contains("@")
           || newUser.getPassword().isEmpty) {
            return false
        }
        return true
    }
}
