//
//  User.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/10.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import RealmSwift




class UserRealmRepository : BaseRepository {
    typealias Domain = User
    
    func find() -> User {
            let realm = try! Realm()
            return realm.objects(User.self).first!
        
    }
    
}
