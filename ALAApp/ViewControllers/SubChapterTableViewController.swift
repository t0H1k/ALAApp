//
//  TableViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

import UIKit

class SubChapterTableViewController: UITableViewController {
    
    var subChapter: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        subChapter.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subChapter", for: indexPath)
        
        let subChapter = subChapter[indexPath.row]
        
        cell.textLabel?.text = subChapter
        return cell
    }

    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
