//
//  User.swift
//  GitHubSearchRepository
//
//  Created by 伊藤静那(Ito Shizuna) on 2017/07/23.
//  Copyright © 2017年 ShizunaIto. All rights reserved.
//
import Foundation

struct User : JSONDecodable {
    let id: Int
    let login: String
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let login = dictionary["login"] as? String else {
            throw JSONDecodeError.missingValue(key: "login", actualValue: dictionary["login"])
        }
        
        self.id = id
        self.login = login
    }
}
