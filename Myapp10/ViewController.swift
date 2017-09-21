//
//  ViewController.swift
//  Myapp10
//
//  Created by 江宗益 on 2017/9/20.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = ["測試跳頁", "自訂TableViewCell", "UI Part1", "UI Part2", "item 1", "item 2","item 3","item 4","item 5","item 6","item 7",
                 "item 8", "item 9","item 10","item 11","item 12","item 13","item 14",
                 "item 15", "item 16","item 17","item 18","item 19","item 20","item 21"]
    
    @IBOutlet weak var rand: UILabel!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }

    
    //主頁
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row] //UILabe
        cell.imageView?.image = UIImage(named: "apple.png")
        
        if indexPath.row % 3 == 0 {
            cell.accessoryType = .disclosureIndicator
        }else{
            cell.accessoryType = .none
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gotovc(whereVC: indexPath.row)
    }
        func gotovc(whereVC: Int){
            switch whereVC {
            case 0:
               if let vc2 = storyboard?.instantiateViewController(withIdentifier: "VC2") {
                    show(vc2, sender: self)
                }else{
                  print("goto vc2 fail")
                }
            case 1:
                if let vc3 = storyboard?.instantiateViewController(withIdentifier: "VC3") {
                    show(vc3, sender: self)
                }else{
                 print("goto vc3 fail")
                }
            case 2:
                if let vc4 = storyboard?.instantiateViewController(withIdentifier: "VC4") {
                    show(vc4, sender: self)
                }else{
                    print("goto vc4 fail")
                }

            default:
                print("XX")
            }
        }

//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        return .none
//    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rand.text = String(arc4random_uniform(49)+1)
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

