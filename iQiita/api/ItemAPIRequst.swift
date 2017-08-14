//
//  File.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/11.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import APIKit

struct ItemApiRequest :  APIRequest {
   
    typealias Response = [Item]
    
    typealias urlPathAndQuery = (path : String ,query : String)
    
    
    var baseURL: URL{
        return URL(string: "https://qiita.com")!
    }
    
    var path: String
    var method : HTTPMethod
    
    
    init(method : HTTPMethod) {
        self.method = method
        switch method {
        case .get:
            self.path = "/api/v2/items"
            break
            
        case .post:
            self.path = "/api/v2/items"
            break
            
        case .put:
            self.path = "/api/v2/items"
            break
            
        case .delete:
            self.path = "/api/v2/items"
            break
        default:
            self.path = "/api/v2/items"
            break
        }
    }
    
    
    /// Build `Response` instance from raw response object. This method is called after
    /// `intercept(object:urlResponse:)` if it does not throw any error.
    /// - Throws: `ErrorType`
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [Item] {
        guard let dictory = object as? [[String : AnyObject]] else {
            throw ResponseError.unexpectedObject(object)
        }
        
        guard let items :  [Item] = Item.buildWithArray(repositories: dictory) else {
            ResponseError.unexpectedObject(object)
        }
        
        return items
    }
}

protocol RESTClient {
    typealias AAAA = ()
}

//extension ItemApiRequest {
//    
//    enum RESTMethod {
//        case INDEX
//        case SHOW
//        case CREATE
//        case EDIT
//        case DELETE
//    }
//    
//    init(method : RESTMethod) {
//        switch method {
//        case .CREATE:
//            self.path = ""
//        default:
//            break
//        }
//    }
//}
//


