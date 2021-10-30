//
//  TodoItemTableViewCell.swift
//  MunaToDoList
//
//  Created by M's MacBook  on 31/10/2021.
//

import UIKit

class TodoItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
