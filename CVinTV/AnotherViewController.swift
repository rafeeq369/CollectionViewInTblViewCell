//
//  AnotherViewController.swift
//  CVinTV
//
//  Created by intelmac on 20/01/21.
//

import UIKit

class AnotherViewController: UIViewController {
    @IBOutlet weak var previewImg: UIView!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var scrlView: UIView!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var fstView: UIView!
    @IBOutlet weak var scndView: UIView!
    @IBOutlet weak var yrdView: UIView!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrlView.layer.cornerRadius = 20
        btn.layer.cornerRadius = 28
        backBtn.layer.cornerRadius = 5
        userImg.layer.cornerRadius = 5
        self.shadow(shadow: fstView)
        self.shadow(shadow: scndView)
        self.shadow(shadow: yrdView)
        
        
           let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchHappen(_:)))
           foto.addGestureRecognizer(tap)
           foto.isUserInteractionEnabled = true
    }
    
    @objc func touchHappen(_ sender: UITapGestureRecognizer) {
        print("Hello Dear you are here")
        previewImg.isHidden = false
    }

    @IBAction func backToCV(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func closeBtn(_ sender: Any) {
        previewImg.isHidden = true
    }
    
    func shadow(shadow: UIView) {
        
        shadow.layer.shadowOffset =  CGSize(width: 0, height: 1.0)
                shadow.layer.shadowColor = UIColor.black.cgColor
                shadow.layer.shadowRadius = 3.0
                shadow.layer.shadowOpacity = 0.20
                shadow.layer.cornerRadius = 5
                shadow.clipsToBounds = true
                shadow.layer.masksToBounds = false
                shadow.layer.masksToBounds = false
    }

    
}
