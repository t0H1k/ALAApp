//
//  TableViewController.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

import UIKit

class SubChapterTableViewController: UITableViewController {
    
    //let chapterBook = Book.getBook() не нужно
    var subChapterStr: [String] = []
    //var subChapter = SubChapter.getSubChapter() не нужно
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        subChapterStr.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subChapter", for: indexPath)
        let subChapter = subChapterStr[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = subChapter
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

        let selectedSubChapter = subChapterStr[selectedRow]

        let detailSubChapterVC = segue.destination as? DetailsSubChapterViewController
        
        //detailSubChapterVC?.content = subChapterStr.randomElement() вот тут проблема, даже рандомный не передает
    }
}

