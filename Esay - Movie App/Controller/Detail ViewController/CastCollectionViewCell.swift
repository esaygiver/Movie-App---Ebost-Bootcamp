//
//  CastCollectionViewCell.swift
//  Esay - Movie App
//
//  Created by admin on 23.01.2021.
//  Copyright © 2021 esaygiver. All rights reserved.
//

import UIKit

class CastCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var castImage: UIImageView!
    @IBOutlet var castName: UILabel!
    
    func configureCast(model: Cast) {
        self.castName.text = model.name
        self.castImage.fetchImage(from: model.profileURL.absoluteString)
    }
}
