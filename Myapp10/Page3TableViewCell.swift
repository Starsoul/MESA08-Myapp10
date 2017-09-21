//
//  Page3TableViewCell.swift
//  Myapp10
//
//  Created by 江宗益 on 2017/9/20.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class Page3TableViewCell: UITableViewCell {

    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var mylabel: UILabel!
    
    
    @IBOutlet weak var myswitch: UISwitch!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
