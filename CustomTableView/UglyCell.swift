//
//  UglyCell.swift
//  CustomTableView
//
//  Created by Mike Pitre on 10/30/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class UglyCell: UITableViewCell {
    
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
        
    }
    
    func configureCell(image: UIImage, text: String) {
        mainImg.image = image
        mainLbl.text = text
    }

}
