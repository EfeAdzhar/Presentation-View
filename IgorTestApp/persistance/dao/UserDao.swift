//
//  UserDao.swift
//  IgorTestApp
//
//  Created by Efe on 17.07.2023.
//

import Foundation

class UserDao {
    private var userDB : [User] = []
    
    static var shared: UserDao = {
        let instance = UserDao()
        return instance
    }()
    
    private init() {}
    
    public func appendUser(_ user : User) {
        userDB.append(user)
    }
    public func getUserDB() -> [User] {
        return userDB
    }
}

extension UserDao : NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
