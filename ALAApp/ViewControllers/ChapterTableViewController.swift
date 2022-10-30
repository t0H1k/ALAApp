//
//  MainTableViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

import UIKit

class ChapterTableViewController: UITableViewController {
    
    let chapterBook = Book.getBook()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chapterBook.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chapter", for: indexPath)
        let chapter = chapterBook[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = chapter.chapter
        cell.contentConfiguration = content
        return cell
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = self.tableView.indexPathForSelectedRow
        
        guard let selectedRow = indexPath?.row else { return }
        
        let selectedChapter = chapterBook[selectedRow]
        
        let subChapterTVC = segue.destination as? SubChapterTableViewController
        
        subChapterTVC?.subChapter = selectedChapter.subShapter
    }
}
