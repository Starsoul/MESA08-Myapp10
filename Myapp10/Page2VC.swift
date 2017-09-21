//
//  Page2VC.swift
//  Myapp10
//
//  Created by 江宗益 on 2017/9/20.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {

    
    @IBOutlet weak var rand: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rand.text = String(arc4random_uniform(49)+1)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
