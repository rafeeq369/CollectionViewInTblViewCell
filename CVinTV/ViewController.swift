//
//  ViewController.swift
//  CVinTV
//
//  Created by Soft on 29/10/1942 Saka.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource,tblDelegate,UITextFieldDelegate {

    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!

    let num = ["Popular Electronics", "Popular Brands", "Popular Brands", "Popular Gadgets", "Popular Gadgets", "6","Electronic Suggestions", "4", "5", "6"]
    let topBrands = ["Appple", "Samsung", "One Plus", "Redmi", "Nokia"]

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var banner: UIView!
    @IBOutlet weak var searchFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        tableView.isScrollEnabled = false
        tableView.reloadData()
        tableView.estimatedSectionHeaderHeight = 50
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tvCell")
        tableView.register(UINib(nibName: "TableViewCellTwo",bundle: nil), forCellReuseIdentifier: "tvCell2")
        
        self.cornerRadiusView(radius: banner)

        heightConstraint.constant = 135 + 203 * 7.7
        NotificationCenter.default.addObserver(self, selector: #selector(myFunction), name: NSNotification.Name(rawValue: "Navigation"), object: nil)
    }
    
    @objc func myFunction(notification: Notification) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let destination = storyboard.instantiateViewController(withIdentifier: "AnotherViewController") as! AnotherViewController
        self.navigationController?.pushViewController(destination, animated: true)
    }
    
//    .................................
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topBrands.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellTop  = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTop", for: indexPath as IndexPath) as! TopCollectionViewCell
        cellTop.BrandTextLbl?.text = topBrands[indexPath.row]
            return cellTop
    }
    
    
    internal func textFieldShouldReturn(_ searchFeild: UITextField) -> Bool {
            self.searchFeild.endEditing(true)
            return false
    }
    

//    .................................
    
    func cornerRadiusView(radius: UIView ){
        radius.layer.cornerRadius = 10.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            let cell2:TableViewCellTwo = tableView.dequeueReusableCell(withIdentifier: "tvCell2", for: indexPath) as! TableViewCellTwo
            return cell2
        }
        else{
            let cell1:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "tvCell", for: indexPath) as! TableViewCell
            cell1.delegate = self
            return cell1
        }
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let sectionHeader = UIView.init(frame: CGRect.init(x: 20, y: 0, width: tableView.frame.width, height: 50))

            let sectionText = UILabel()
            sectionText.frame = CGRect.init(x: 25, y: 5, width: sectionHeader.frame.width+10, height: sectionHeader.frame.height+10)
            sectionText.text = num[section]
            sectionText.font = .systemFont(ofSize: 18, weight: .bold) // my custom font
            sectionHeader.backgroundColor = .white // my custom colour

            sectionHeader.addSubview(sectionText)

            return sectionHeader
        }

        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
                return 60 // my custom height
        }
    func goToNav()
    {
                let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
                let destination = storyboard.instantiateViewController(withIdentifier: "AnotherViewController") as! AnotherViewController
                self.navigationController?.pushViewController(destination, animated: true)
    }
    
}


