//
//  ViewController.swift
//  CVinTV
//
//  Created by Soft on 29/10/1942 Saka.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let num = ["Popular Electronics", "Popular Brands", "Electronic Suggestions", "4", "5", "6", "7"]

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var banner: UIView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            tableView.reloadData()
           
            tableView.estimatedSectionHeaderHeight = 50
            tableView.sectionHeaderHeight = UITableView.automaticDimension
            tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tvCell")
            tableView.register(UINib(nibName: "TableViewCellTwo",bundle: nil), forCellReuseIdentifier: "tvCell2")
            
            self.cornerRadiusView(radius: banner)
    }
    
    func cornerRadiusView(radius: UIView ){
        radius.layer.cornerRadius = 10.0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  3
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
    
}


