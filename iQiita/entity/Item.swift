//
//  Item.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/13.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper
import RxSwift

class Item: Mappable {
    
    required init?(map: Map) {
    }
    
    dynamic var rendered_body : String = ""
    dynamic var title : String = ""
    dynamic var body : String = ""
    dynamic var created_at : String = ""
    dynamic var updated_at : String = ""
    dynamic var url : String = ""
    dynamic var itemdescription: String = ""
    
    func mapping(map: Map) {
        rendered_body <- map["rendered"]
        title <- map["title"]
        body <- map["rendered"]
        created_at <- map["created_at"]
        updated_at <- map["updated_at"]
        url <- map["url"]
        itemdescription <- map["description"]
        
    }
    
    static func buildWithArray(repositories: [[String: AnyObject]]) -> [Item] {
        var arr: [Item] = []
        for repositoryDict in repositories {
            if let repository = Mapper<Item>().map(JSON: repositoryDict) {
                arr.append(repository)
            }
        }
        return arr
    }
}
