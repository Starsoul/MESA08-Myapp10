//
//  Page3VC.swift
//  Myapp10
//
//  Created by 江宗益 on 2017/9/20.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class Page3VC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var items = ["item 1", "item 2","item 3","item 4"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Page3TableViewCell
//        // UITableViewCell
            cell.img.image = UIImage(named: "apple.png")
            cell.mylabel.text = items[indexPath.row]
        
        if indexPath.row % 2 == 0{
            cell.myswitch.isOn = true
        }else{
            cell.myswitch.isOn = false
        }
        
        return cell
    }

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
