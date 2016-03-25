//
//  TableScrollNavigationViewController.swift
//  Pods
//
//  Created by ChanCyrus on 3/24/16.
//
//

import UIKit

public class TableScrollNavigationViewController: UIViewController {
    // MARK: - properties
    //scrollView that is used to scroll with the Table Navigation Controller
    var scrollableView: UIScrollView?
    var titleView: UILabel!
    var backView: UIButton!
    
    // MARK: - lifecycles
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        if let nvc = navigationController as? TableScrollNavigationController{
            if let sv = scrollableView {
                // Adjust the frame of the scrollableView due to the change of the tableView in Navigation Controller
                sv.contentInset.top = nvc.fullNavBarHeight
                sv.scrollIndicatorInsets.top = sv.contentInset.top
                
                // change the back button to custom one in order to animate
                if nvc.viewControllers.count > 1{
                    let icon = UIImage(named: "Collapse Arrow")
                    let iconButton = UIButton(frame: CGRect(origin: CGPointZero, size: CGSize(width: 20, height: 20)))
                    iconButton.addTarget(self, action: "backBarClicked:", forControlEvents: .TouchUpInside)
                    iconButton.setBackgroundImage(icon, forState: .Normal)
                    navigationItem.leftBarButtonItem = UIBarButtonItem(customView: iconButton)
                }
            }
        }
    }
    
    override public func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if let navigationController = self.navigationController as? TableScrollNavigationController {
            if let scrollableView = scrollableView{
                navigationController.followScrollView(scrollableView, scrollUpDelay: 0, scrollDownDelay: 50)
            }
        }
    }
    
    override public func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let navigationController = self.navigationController as? TableScrollNavigationController {
            navigationController.stopFollowingScrollView()
        }
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func attachScrollableView(view: UIScrollView){
        scrollableView = view
    }
    
    public func backBarClicked (sender: UIBarButtonItem){
        if let nvc = navigationController as? TableScrollNavigationController{
            nvc.popViewControllerAnimated(true)
        }
    }
    
}

