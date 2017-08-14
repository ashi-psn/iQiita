//
//  HomeViewModel.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/13.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation
import RxSwift
import APIKit

class HomeViewModel {
    
    var items  = Variable<[Item]>([])
    private(set) var error = Variable<Error?>(nil)
    var itemusecase = ItemUseCase()
    let disposeBag = DisposeBag()
    
    func loadHome() {
       itemusecase.getItems()
        .asObservable()
        .subscribe{
            [weak self] event in
            switch event {
            case .next(let items):
                self?.items.value = items
            case .error(let error):
                self?.error.value = error
                break
           
            default:
                break
            }
        }.addDisposableTo(disposeBag)
    }
}
