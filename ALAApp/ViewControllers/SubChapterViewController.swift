//
//  TableViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

import UIKit

class SubChapterViewController: UITableViewController {
    
    //let subChapter = SubChapter.getSubChapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.backBarButtonItem
    }
    
    
    // MARK: - Table view data source
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        //return subChapter.count
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subChapter", for: indexPath)
        //let subChapter = subChapter[indexPath.row]
        var content = cell.defaultContentConfiguration()
        //content.text = subChapter.subChapter
        cell.contentConfiguration = content
        return cell
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    // MARK: - Navigation
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let indexPath = tableView.indexPathForSelectedRow {
//            guard let detailVC = segue.destination as? DetailsSubChapterViewController else { return }
//            detailVC.detailChapter = subChapter[indexPath.row]
//        }
//    }
}
