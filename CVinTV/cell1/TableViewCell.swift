//
//  TableViewCell.swift
//  CVinTV
//
//  Created by Soft on 29/10/1942 Saka.
//

import UIKit
protocol tblDelegate {
    func goToNav()
}

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let nums = ["1 One", "2 Tow", "3 Three", "4 Four", "5 Five", "6 Six"]
    let counter = ["One", "Tow", "Three", "Four", "Five", "Six"]
    let ProductImgs = [#imageLiteral(resourceName: "ipad21"), #imageLiteral(resourceName: "ipad4"), #imageLiteral(resourceName: "i1"), #imageLiteral(resourceName: "ipad3"), #imageLiteral(resourceName: "ipad21"), #imageLiteral(resourceName: "ipad4")]
    let UserImgs = [#imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "9")]
    @IBOutlet weak var collectionView: UICollectionView!
    var delegate: tblDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CVCell")

        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return nums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVCell", for: indexPath) as! CollectionViewCell
        cell.productImg?.image = ProductImgs[indexPath.row]
        cell.userImgs?.image = UserImgs[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 330, height: 150)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        
        let product = ProductImgs[indexPath.row]
//        self.delegate.goToNav()
    }
}

