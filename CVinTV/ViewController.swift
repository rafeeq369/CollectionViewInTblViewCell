//
//  ViewController.swift
//  CVinTV
//
//  Created by Soft on 29/10/1942 Saka.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let num = ["1", "2", "3", "4", "5", "6", "7"]

    @IBOutlet weak var tableView: UITableView!

        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvCell", for: indexPath) as! TableViewCell
        return cell
    }

    
}

