//
//  DetailsSubChapterViewController.swift
//  ALAApp
//
//  Created by Anton Boev on 26.10.2022.
//

import UIKit

class DetailsSubChapterViewController: UIViewController {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    var content: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        descriptionLabel.text = "\(content)" //нерабочий вариант
        //либо через цикл делать
        
    }
}
