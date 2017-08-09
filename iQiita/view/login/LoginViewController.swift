//
//  LoginViewController.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/09.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import UIKit
import SafariServices

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    private func startOAuth(){
        
    }
    
}


// MARK: SFSafariViewControllerDelegate
extension LoginViewController : SFSafariViewControllerDelegate {
    
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        
    }
    
//    func safariViewController(_ controller: SFSafariViewController, activityItemsFor URL: URL, title: String?) -> [UIActivity] {
//        present(controller, animated: true, completion: nil)
//    }
//    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        
    }
}
