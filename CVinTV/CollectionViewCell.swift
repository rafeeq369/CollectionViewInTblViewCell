//
//  CollectionViewCell.swift
//  CVinTV
//
//  Created by Soft on 29/10/1942 Saka.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ViewRadius: UIView!
    @IBOutlet weak var imgRadius: UIImageView!
    @IBOutlet weak var userImgs: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.cornerRadiusView(radius: ViewRadius)
        self.cornerRadiusImg(radius: imgRadius)
        self.cornerRadiusImg(radius: userImgs)
    }
    
    func cornerRadiusView(radius: UIView ){
        radius.layer.cornerRadius = radius.frame.width/10.0
        radius.clipsToBounds = true
    }
    func cornerRadiusImg(radius: UIImageView ){
        radius.layer.cornerRadius = radius.frame.width/10.0
        radius.clipsToBounds = true
    }

}
