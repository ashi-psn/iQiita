//
//  BuildConfig.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/09.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import Foundation

class BuildConfig {
    static let sharedManager = BuildConfig()
    
    private init(){
    }
    
    private let baseURL = "https://qiita.com"
    
    // MARK: 環境依存変数取得
    func getString(key : String) -> String {
        var filePath : String
        #if DEBUG
            filePath = Bundle.main.path(forResource: "config_debug", ofType: "plist")!
        #else
            filePath = Bundle.main.path(forResource: "config", ofType: "plist")!
        #endif
        
        let configlist = NSMutableDictionary(contentsOfFile: filePath)
        guard let value = configlist?.value(forKeyPath: key) else {
            fatalError("no such value for key. key : \(key)")
        }
        return value as! String
    }
    
    // MARK: QiitaAPIホスト取得
    // FIXME: 環境変数へ変える
    func getBaseURL() -> String {
        return baseURL
    }
}
