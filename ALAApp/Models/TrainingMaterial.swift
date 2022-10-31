//
//  TrainingMaterial.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

struct Book {
    let chapter: String
    let subChapter: [String]
    let content: [String]
    
    static func getBook() -> [Book] {
        let book = DataStore()
        
        let chapter = book.chapter
        let subChapter = book.subChapter
        let content = book.content
        
        var books: [Book] = []
        
        for index in 0..<book.chapter.count {
            books.append(
                Book(
                    chapter: chapter[index],
                    subChapter: subChapter[index],
                    content: content[index]
                )
            )
        }
        return books
    }
}
