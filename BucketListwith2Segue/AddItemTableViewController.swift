//
//  AddItemTableViewController.swift
//  BucketListwith2Segue
//
//  Created by M's MacBook  on 16/10/2021.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    @IBOutlet weak var WishesTextField: UITextField!
    
    weak var delegate: AddItemTableViewControllerDelegate?
    var WishesEdit: String?
    var indexPath1: NSIndexPath? /* بدينا هنا بهالمتغير عشان لما أعدل سطر مايحط التعديل كعنصر جديد ثم بناديه تحت مع دالة الحفظ  */


    override func viewDidLoad() {
        super.viewDidLoad()
        WishesTextField.text = WishesEdit
    }
    
    override func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
    }
    @IBAction func CancelBtn(_ sender: UIBarButtonItem) {
        delegate?.CancelBtn(by: self)
    }
    
    @IBAction func SaveBtn(_ sender: UIBarButtonItem) {
        let text = WishesTextField.text!
        delegate?.WishesSaved(by: self, with: text, at: indexPath1)
        
    }
}
