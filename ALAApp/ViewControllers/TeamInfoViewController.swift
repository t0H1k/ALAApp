//
//  TeamInfoViewController.swift
//  ALAApp
//
//  Created by Anton Boev on 30.10.2022.
//

import UIKit

class TeamInfoViewController: UIViewController {

    @IBOutlet var aitolkunPhoto: UIImageView! {
        didSet {
            aitolkunPhoto.layer.cornerRadius = aitolkunPhoto.frame.height / 2
            
        }
    }
    
    @IBOutlet var leonidPhoto: UIImageView! {
        didSet {
            leonidPhoto.layer.cornerRadius = leonidPhoto.frame.height / 2
        }
    }
    
    @IBOutlet var antonPhoto: UIImageView! {
        didSet {
            antonPhoto.layer.cornerRadius = antonPhoto.frame.height / 2
        }
    }
    
    @IBOutlet var aitolkunLabel: UILabel!
    @IBOutlet var leonidLabel: UILabel!
    @IBOutlet var antonLabel: UILabel!
//
//    var team: Team!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        aitolkunPhoto.image = UIImage(named: "Aitolkun")
        leonidPhoto.image = UIImage(named: "Leonid")
        antonPhoto.image = UIImage(named: "Anton")
        aitolkunLabel.text = "Айтолкун Анарбекова"
        leonidLabel.text = "Леонид Горбунов"
        antonLabel.text = "Антон Боев"
    }
}
