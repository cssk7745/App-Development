//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Sanjay Krishna on 12/01/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

  
    override func awakeFromNib() {
        super.awakeFromNib()
        
        }
    
    func update(with emoji:Emoji)  {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
        // Initialization code
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var symbolLabel: UILabel!
    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
