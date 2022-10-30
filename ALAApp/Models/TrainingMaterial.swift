//
//  TrainingMaterial.swift
//  ALAApp
//
//  Created by Айтолкун Анарбекова on 26/10/22.
//

// Модель. Вариант номер 1. По аналогии с КонтактЛистом

struct Book {
    let chapter: String // потому что доступ напрямую
    let subShapter: [String] //потому что массив в массиве
    let content: [String] //потому что массив в массиве
    
    static func getBook() -> [Book] {
        let book = DataStore.shared
        
        let chapter = book.chapter
        let subChapter = book.subChapter
        let content = book.content
        
        var books: [Book] = []
        
        for index in 0..<book.chapter.count {
            books.append(
                Book(
                    chapter: chapter[index],
                    subShapter: subChapter[index],
                    content: content[index]
                )
            )
        }
        return books
    }
}
