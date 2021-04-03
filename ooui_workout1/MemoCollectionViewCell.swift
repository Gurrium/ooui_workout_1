//
//  MemoCollectionViewCell.swift
//  ooui_workout1
//
//  Created by gurrium on 2021/04/03.
//

import UIKit

class MemoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func render(title: String, content: String) {
        self.titleLabel.text = title
        self.contentLabel.text = content
    }
}
