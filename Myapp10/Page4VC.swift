//
//  Page4VC.swift
//  Myapp10
//
//  Created by 江宗益 on 2017/9/21.
//  Copyright © 2017年 江宗益. All rights reserved.
//

import UIKit

class Page4VC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var items = ["item 1", "item 2","item 3","item 4","item 5",
                 "item 6","item 7","item 8", "item 9","item 10"]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        cell.imageView?.image = UIImage(named: "apple.png")
        
        
        return cell
    }
    
    
    
    
    
    //設定編輯模式
//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle{
////        return .none ==> 使用在 move.mode
//        return .delete
//    }

    
    //設定是否可以搬移 ==> 不實作implement的話, 預設是可以move(true)
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    //處理刪除或新增
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
    }
    
    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath){
        //此處進行陣列交換
        let moveString = items.remove(at: sourceIndexPath.row)
        items.insert(moveString, at: destinationIndexPath.row)
        print(items)
    }
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        tableView.isEditing = true
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
