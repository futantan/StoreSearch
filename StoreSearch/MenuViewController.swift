//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by luckytantanfu on 7/24/15.
//  Copyright (c) 2015 futantan. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    weak var delegate: MenuViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            delegate?.menuViewControllerSendSupportEmail(self)
        }
    }
}

protocol MenuViewControllerDelegate: class {
    func menuViewControllerSendSupportEmail(MenuViewController)
}