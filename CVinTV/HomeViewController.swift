//
//  HomeViewController.swift
//  CVinTV
//
//  Created by intelmac on 21/01/21.
//

import UIKit

class HomeViewController: UIViewController,UITextFieldDelegate  {

    @IBOutlet weak var banner: UIView!
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.cornerRadiusView(radius: banner)
        
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
    }

    internal func textFieldShouldReturn(_ searchFeild: UITextField) -> Bool {
            self.searchBar.endEditing(true)
            return false
    }
    
    func cornerRadiusView(radius: UIView ){
        radius.layer.cornerRadius = 10.0
    }
}
