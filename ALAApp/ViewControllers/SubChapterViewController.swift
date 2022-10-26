//
//  TableViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

import UIKit

class SubChapterViewController: UITableViewController {
    
    let subChapter = SubChapterBook.getSubChapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.backBarButtonItem
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subChapter.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subChapter", for: indexPath)
        let chapter = subChapter[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = chapter.fullNameOfSubChapter
        cell.contentConfiguration = content
        return cell
    }

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
}
