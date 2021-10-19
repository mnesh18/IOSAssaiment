//
//  AddItemTableViewControllerDelegate.swift
//  BucketListwith2Segue
//
//  Created by M's MacBook  on 18/10/2021.
//

import UIKit

protocol AddItemTableViewControllerDelegate: class {
    func WishesSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func CancelBtn(by controller: AddItemTableViewController)
    
}

