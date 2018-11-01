//
//  HeaderCell.swift
//  IOSTableViewSectionHeadersPrototypeCells
//
//  Created by Iengpho on 11/1/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell {
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var headerLabel: UILabel!
    
    func setupCell(image: UIImage, labelText: String) {
        headerImage.image = image
        headerLabel.text = labelText
    }
}
