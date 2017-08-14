//
//  Session+RxResponse.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/14.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import RxSwift
import APIKit

extension Session {
    public static func rx_response<T: Request>(request: T) -> Observable<T.Response> {
        return Observable.create { observer in
            let task = send(request) { result in
                switch result {
                case .success(let response):
                    observer.onNext(response)
                    observer.onCompleted()
                case .failure(let error):
                    observer.onError(error)
                }
            }
            let t = task
            t?.resume()
            
            return Disposables.create() {
                task?.cancel()
            }
        }
    }
}
