//
//  ResultViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 27/10/22.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        navigationController?.dismiss(animated: true)
        }
    }
