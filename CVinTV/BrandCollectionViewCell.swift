//
//  BrandCollectionViewCell.swift
//  CVinTV
//
//  Created by intelmac on 19/01/21.
//

import UIKit

class BrandCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var brandCellView: UIView!
    @IBOutlet weak var innerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // self.cornerRadiusView(radius: brandCellView)
       // self.cornerRadiusView(radius: innerView)
        innerView.layer.cornerRadius = 10.0

    }
    func cornerRadiusView(radius: UIView ){
        radius.layer.cornerRadius = 10.0
    }
}
