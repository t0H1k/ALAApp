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
    
    var team: Team!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aitolkunPhoto.image = UIImage(named: team.aitolkunPhoto)
        leonidPhoto.image = UIImage(named: team.leonidPhoto)
        antonPhoto.image = UIImage(named: team.antonPhoto)
        aitolkunLabel.text = team.aitolkun
        leonidLabel.text = team.leonid
        antonLabel.text = team.anton
    }
}
