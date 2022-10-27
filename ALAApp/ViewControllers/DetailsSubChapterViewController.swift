//
//  DetailsSubChapterViewController.swift
//  ALAApp
//
//  Created by Anton Boev on 26.10.2022.
//

import UIKit

class DetailsSubChapterViewController: UIViewController {
    

    @IBOutlet var descriptionLabel: UILabel!
    let content = Content.getContent()
    
    // @Айтолкун 
    // этого красавца нам бы связать с экраном куда передаем конспект
    // сюда же надо протянуть лейбл из "конспекта"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = detailChapter.subChapter
//        descriptionLabel.text = "\(detailChapter.detailchapter)"
    }
}
