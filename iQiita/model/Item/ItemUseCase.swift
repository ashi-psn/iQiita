//
//  ItemUseCase.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/13.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import APIKit
import Result
import RxSwift

class ItemUseCase {
    
    func getItems() -> Observable<[Item]> {
        let request = ItemApiRequest(method: .get)
        
        return Session.rx_response(request: request)
        
//        Session.send(request) { result in
//            switch result {
//            case .success(let repos):
//                print(repos)
//            // something to do
//            case .failure(let error):
//                print(error)
//            }
//        }
    }
    
}
