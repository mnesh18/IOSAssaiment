//
//  BucketListTableViewController.swift
//  BucketListwith2Segue
//
//  Created by M's MacBook  on 16/10/2021.
//

import UIKit

class BucketListTableViewController: UITableViewController, AddItemTableViewControllerDelegate {
    
    func WishesSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?) {
        if let ip = indexPath {
            Wishes[ip.row] = text
        } else {
            Wishes.append(text)
        }
        tableView.reloadData()
       dismiss(animated: true, completion: nil)
    }
    
    
    func CancelBtn(by controller: AddItemTableViewController) {
    dismiss(animated: true, completion: nil)
    }
    
    
    var Wishes = ["Fly to the Moon","Swim in the Ocean","Sleep on the clouds","Shaining in the Dark"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Wishes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListWishesCell", for: indexPath)
        cell.textLabel?.text =  Wishes[indexPath.row]
        return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(Wishes[indexPath.row])
    }
//    هالدالة يحدد لي فيها أي خلية أو سطر بالضبببببببط اللي اخترت التعديل عليه وتحت بالببير راح أخليه بعد التحديد يعدل من هناك ^^
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        Wishes.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "EditWishesSegue", sender: indexPath)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWishesSegue" {
        let navigationController = segue.destination as! UINavigationController
        let AddItemTableController = navigationController.topViewController as! AddItemTableViewController
        AddItemTableController.delegate = self
        }
        else if segue.identifier == "EditWishesSegue" {
            let navigationController = segue.destination as! UINavigationController
            let AddItemTableController = navigationController.topViewController as! AddItemTableViewController
            AddItemTableController.delegate = self
            
            let indexPath = sender as! NSIndexPath /*I hate this crash--(signal SIGABRT)--could not cast value of type 'UIBarButtonItem' to 'NSIndexPath' What's the meanning? */
            let Item = Wishes[indexPath.row] /* or just [sender] ? IDK!!! */
            AddItemTableController.WishesEdit = Item
            AddItemTableController.indexPath1 = indexPath
        }
    }
}

/* I'm done I suppose is perfect ^^* */
