//
//  ViewController.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/09.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources
import SafariServices

class HomeViewController: UIViewController {

    var viewmodel = HomeViewModel()
    
    @IBOutlet weak var tableview: UITableView!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bindViewModel()
        
        viewmodel.loadHome()
        
        tableview.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK :bind ViewModel
    func bindViewModel() {
        viewmodel.items.asObservable().bind(to: tableview.rx.items(cellIdentifier: "ItemTableViewCell", cellType: ItemTableViewCell.self)) { index, model, cell in
            cell.title?.text = model.title
        }.disposed(by: disposeBag)
    }

}

// MARK: UITableViewDelegate
extension HomeViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var item = viewmodel.items.value[indexPath.row]
        showItem(urlString: viewmodel.items.value[indexPath.row].url)
    }
    
    func showItem(urlString : String) {
        let url = URL(string: urlString)
        let safariservice = SFSafariViewController(url: url!)
        present(safariservice, animated: true, completion: nil)
    }
}
