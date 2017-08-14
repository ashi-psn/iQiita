//
//  ItemTableViewCell.swift
//  iQiita
//
//  Created by 葦沢尚也 on 2017/08/14.
//  Copyright © 2017年 あっしーの死にそうなAirちゃん. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
