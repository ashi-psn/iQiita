//
//  APIRequest.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/13.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import APIKit

protocol APIRequest : Request {
    
}

extension APIRequest{
    var baesURL : URL{
        return URL(string: "https://qiita.com")!
    }
}
