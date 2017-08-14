//
//  LoginViewController.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/09.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import UIKit
import SafariServices
import RxSwift

class LoginViewController: UIViewController {

    let url = URL(string: "https://qiita.com/api/v2/oauth/authorize?client_id=d6d473265c940e355b3dd497eb1bd95d34cb3175&scope=read_qiita+write_qiita&state=bb17785d811bb1913ef54b0a7657de780defaa2d")
    
//        let url = URL(string: "https://qiita.com")
    
    @IBOutlet weak var authorizationbutotn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func startAuth(_ sender: Any) {
        startAuth()
    }
    
    private func startAuth(){
        let safariservice = SFSafariViewController(url: url!)
        //        safariservice.delegate = self
        //        safariservice.loadView()
        present(safariservice, animated: true, completion: nil)

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
