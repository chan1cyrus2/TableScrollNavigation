//
//  ViewController.swift
//  TableScrollNavigation
//
//  Created by Cyrus Chan on 03/24/2016.
//  Copyright (c) 2016 Cyrus Chan. All rights reserved.
//

import UIKit
import TableScrollNavigation

class ViewController: TableScrollNavigationViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var section:Int!
    
    override func viewDidLoad() {
        // Step 1: attach the scrollview
        attachScrollableView(tableView)
        
        super.viewDidLoad()
        
        if title == nil{
            title = "Home"
            section = 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "Row \(section).\(indexPath.row + 1)"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // Get the associated category item
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        if let nc = navigationController as? TableScrollNavigationController{
            vc.section = section+1
            vc.title = "Row \(section).\(indexPath.row + 1)"
            
            // Step 2: call pushViewController to push a view controller to stack and also add the name of the previous controller to the table on navigation bar
            nc.pushViewController(vc, animated: true, title: self.title!)
            
        }
    }
    
}
