//
//  MyCollectionViewCell.swift
//  collecionView
//
//  Created by 野澤拓己 on 2020/08/28.
//  Copyright © 2020 Takumi Nozawa. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    public func configure(with model: Model) {
        
        self.myLabel.text = model.text
        self.myImageView.image = UIImage(named: model.imageName)
        
        self.myImageView.contentMode = .scaleAspectFit
        
    }

}
